1. Seats won by each party across election years

Winner = highest votes per constituency in that year.

WITH winners AS (
    SELECT
        "Year",
        "Party",
        ROW_NUMBER() OVER (
            PARTITION BY "Year", "Constituency_No"
            ORDER BY "Votes" DESC
        ) AS rn
    FROM tn_election
)
SELECT
    "Year",
    "Party",
    COUNT(*) AS seats_won
FROM winners
WHERE rn = 1
GROUP BY "Year", "Party"
ORDER BY "Year", seats_won DESC;

2. Seat swing analysis (seats gained/lost compared to previous election)
WITH winners AS (
    SELECT
        "Year",
        "Party",
        ROW_NUMBER() OVER (
            PARTITION BY "Year", "Constituency_No"
            ORDER BY "Votes" DESC
        ) AS rn
    FROM tn_election
),
seats AS (
    SELECT
        "Year",
        "Party",
        COUNT(*) AS seats
    FROM winners
    WHERE rn = 1
    GROUP BY "Year", "Party"
),
swing AS (
    SELECT
        "Year",
        "Party",
        seats,
        LAG(seats) OVER (PARTITION BY "Party" ORDER BY "Year") AS prev_seats,
        seats - COALESCE(LAG(seats) OVER (PARTITION BY "Party" ORDER BY "Year"), 0) AS seat_swing
    FROM seats
)
SELECT *
FROM swing
ORDER BY "Year", seat_swing DESC;

3. Multi-year vote share trend for major parties (DMK, ADMK, BJP, INC)
SELECT
    "Year",
    AVG("Vote_Share_Percentage") FILTER (WHERE "Party" = 'DMK')  AS dmk_voteshare,
    AVG("Vote_Share_Percentage") FILTER (WHERE "Party" = 'ADMK') AS admk_voteshare,
    AVG("Vote_Share_Percentage") FILTER (WHERE "Party" = 'BJP')  AS bjp_voteshare,
    AVG("Vote_Share_Percentage") FILTER (WHERE "Party" = 'INC')  AS inc_voteshare
FROM tn_election
WHERE "Party" IN ('DMK', 'ADMK', 'BJP', 'INC')
GROUP BY "Year"
ORDER BY "Year";

4. Districts with highest turnout by year
WITH dt AS (
    SELECT
        "Year",
        "District_Name",
        AVG("Turnout_Percentage") AS avg_turnout,
        ROW_NUMBER() OVER (
            PARTITION BY "Year"
            ORDER BY AVG("Turnout_Percentage") DESC
        ) AS rn
    FROM tn_election
    GROUP BY "Year", "District_Name"
)
SELECT
    "Year",
    "District_Name",
    avg_turnout
FROM dt
WHERE rn = 1
ORDER BY "Year";

5. Close contests (<1% margin)
SELECT
    "Year",
    "Constituency_No",
    "Constituency_Name",
    "Candidate",
    "Party",
    "Margin_Percentage"
FROM tn_election
WHERE "Margin_Percentage" < 1
ORDER BY "Year", "Margin_Percentage";