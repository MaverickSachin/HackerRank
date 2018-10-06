SELECT A.[Start_Date]
	,Min(B.[End_Date]) AS [End_Date]
FROM (
	SELECT [Start_Date]
	FROM Project
	WHERE [Start_Date] NOT IN (
			SELECT [End_Date]
			FROM Project
			)
	) A
	,(
		SELECT [End_Date]
		FROM Project
		WHERE [End_Date] NOT IN (
				SELECT [Start_Date]
				FROM Project
				)
		) B
WHERE A.[Start_Date] < B.[End_Date]
GROUP BY A.[Start_Date]
ORDER BY DATEDIFF(Day, A.[Start_Date], Min(B.[End_Date]))
	,A.[Start_Date];
