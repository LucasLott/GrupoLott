CREATE PROCEDURE dbo.st_HelpTabela @NM_Pesquisa Varchar(255)
AS BEGIN
  SET NOCOUNT ON;

  SELECT NM_Tabela
        ,NM_Logico
  FROM dbo.SIS001 WITH (NOLOCK)
  WHERE EXISTS (SELECT 1
                WHERE NM_Tabela LIKE @NM_Pesquisa + '%'
                UNION ALL
                SELECT 1
                WHERE NM_Logico LIKE '%' + @NM_Pesquisa + '%');
END