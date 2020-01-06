create trigger demo
on dbo.BILLING
after update
as
begin
set nocount on;
declare @tot int
set @tot=(select count(*) from BILLING);
if @tot>2
update BILLING set TOTAL=TOTAL*0.9;
end