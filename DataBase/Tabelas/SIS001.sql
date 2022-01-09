IF (NOT EXISTS(SELECT 1 FROM SYSOBJECTS WHERE Name = 'SIS001'))
  BEGIN
    CREATE TABLE dbo.SIS001 (
      NM_Tabela Varchar(10) COLLATE Latin1_General_CI_AS NOT NULL
     ,NM_Logico Varchar(40) COLLATE Latin1_General_CI_AS NOT NULL
      CONSTRAINT PK_SIS001 PRIMARY KEY(NM_Tabela));
  END

  IF (NOT EXISTS(SELECT 1 FROM dbo.SIS001 WHERE NM_Tabela = 'SIS001'))
  BEGIN
    INSERT INTO dbo.SIS001(NM_Tabela
                          ,NM_Logico)
    SELECT NM_Tabela = 'SIS001'
          ,NM_Logico = 'Nomes lógicos de tabelas'
  END