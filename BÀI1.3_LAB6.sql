CREATE TRIGGER checkupdate_dchiNV ON NHANVIEN FOR UPDATE AS
IF N'%TP HCM' IN (SELECT DCHI FROM inserted)
BEGIN
PRINT N'KHÔNG ĐƯỢC CẬP NHẬT NHỮNG NHÂN VIÊN Ở TP HCM'
ROLLBACK TRANSACTION
END