		select 
		p."Id" 
		,ASSOU."Дата возникновения спора AC"
		,NextSessionDate."Дата и время заседания АС"
		from "CaseMap"."Projects" p 
		left join (
		select 
				ASSOU."ProjectId",		
				ASSOU."Дата возникновения спора AC"
		from (
		SELECT 
		        pvb."ProjectId",
		        b."4ec00734-50d7-4b96-9842-b356daf313de" AS "Дата возникновения спора AC"
		FROM 
		        "DataBlocks"."Block_568b254d-cf7f-40a4-a04e-7d0f1181764a" AS b
		LEFT JOIN 
		        "CaseMap"."ProjectVisualBlocks" AS pvb ON pvb."Id" = b."ProjectVisualBlockId"
		union all 
		SELECT 
		        pvb."ProjectId",
		        b."c365e119-f92f-42d4-99e9-b9fcdb034c0c" AS "Дата возникновения спора СОЮ"
		FROM 
		        "DataBlocks"."Block_b5ced2d1-4ccf-4a05-b649-0f007ca649f7" AS b
		LEFT JOIN 
		        "CaseMap"."ProjectVisualBlocks" AS pvb ON pvb."Id" = b."ProjectVisualBlockId"      
		    ) as ASSOU
		) as ASSOU ON ASSOU."ProjectId" = p."Id"
		left join(
				SELECT 
		        pvb."ProjectId",
		        b."f7ffc4c6-c72f-40a2-b35a-f72a4e72502f" AS "Дата и время заседания АС"
                --MAX(CAST(b."f7ffc4c6-c72f-40a2-b35a-f72a4e72502f" AS DATE)) AS "Дата и время заседания АС"
				FROM 
		        "DataBlocks"."Block_01e546fc-1c1e-467d-9315-4412a367ee59" AS b
				LEFT JOIN 
		        "CaseMap"."ProjectVisualBlocks" AS pvb ON pvb."Id" = b."ProjectVisualBlockId"
		) as NextSessionDate on NextSessionDate."ProjectId" = p."Id";	