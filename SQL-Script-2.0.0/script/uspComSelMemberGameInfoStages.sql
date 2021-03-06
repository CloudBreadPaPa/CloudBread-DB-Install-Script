--DROP PROC uspComSelMemberGameInfoStages
CREATE PROC uspComSelMemberGameInfoStages
@MemberGameInfoStageID NVARCHAR(MAX)
, @MemberID NVARCHAR(MAX)
AS 
select MemberGameInfoStageID, MemberID, StageName, StageStatus, Category1, Category2, Category3, Mission1, Mission2, Mission3, Mission4, Mission5, Points, StageStat1, StageStat2, StageStat3, StageStat4, StageStat5, sCol1, sCol2, sCol3, sCol4, sCol5, sCol6, sCol7, sCol8, sCol9, sCol10
from MemberGameInfoStages with(nolock)
where MemberID like @MemberID and MemberGameInfoStageID like @MemberGameInfoStageID and HideYN like 'N' and DeleteYN like 'N'
GO

/*
-----------------------------------------------------------------------
EXEC uspComSelMemberGameInfoStages 'MemberGameInfoStageID1', 'aaa'
EXEC uspComSelMemberGameInfoStages 'MemberGameInfoStageID1', 'xxx'
EXEC uspComSelMemberGameInfoStages 'noexists', 'aaa'
-----------------------------------------------------------------------
select * from MemberGameInfoStages
*/
