use FuelEconomy;
-- import tables FE2010 & FE2011 from database

drop table fe2010;
drop table fe2011;

alter table fe2010 drop column betazero;
alter table fe2010 add betazero float(12,3);
update fe2010 set betazero = 050.563 where betazero is null;
select * from fe2010;

alter table fe2010 drop column betaone;
alter table fe2010 add betaone float(12,3);
update fe2010 set betaone = -4.521 where betaone is null;

alter table fe2010 drop column predicted;
alter table fe2010 add predicted float(12,3);
update fe2010 set predicted = betazero + betaone*EngDispl where predicted is null;
select * from fe2010;

alter table fe2011 drop column predicted;
alter table fe2011 add predicted float(12,3);
update fe2011 set predicted = 50.563 + (EngDispl*-4.521) where predicted is null;
select * from fe2011;
