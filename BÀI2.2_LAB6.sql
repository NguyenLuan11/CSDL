﻿CREATE TRIGGER checkSumUpdate_PhainamnuNV ON NHANVIEN AFTER UPDATE AS
BEGIN
DECLARE @SUM_NAM INT, @SUM_NU INT;
SET @SUM_NAM = (SELECT PHAI FROM NHANVIEN WHERE PHAI LIKE N'NAM')
SET @SUM_NU = (SELECT PHAI FROM NHANVIEN WHERE PHAI LIKE N'NỮ');
SELECT @SUM_NAM = COUNT(*) FROM inserted
SELECT @SUM_NU = COUNT(*) FROM inserted
PRINT N'TỔNG NHÂN VIÊN NAM' + @SUM_NAM
PRINT N'TỔNG NHÂN VIÊN NỮ' +@SUM_NU
END