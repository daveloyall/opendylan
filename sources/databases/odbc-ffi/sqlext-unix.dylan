Module: odbc-ffi
Author: yduJ
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      See License.txt in this distribution for details.
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

// This file is automatically generated from "sqlext.j"; do not edit.


define c-func-with-err SQLDriverConnect
  parameter hdbc       :: <SQLHDBC>;
  parameter hwnd       :: <SQLHWND>;
  parameter szConnStrIn :: <LPSQLCHAR>;
  parameter cbConnStrIn :: <SQLSMALLINT>;
  parameter szConnStrOut :: <LPSQLCHAR>;
  parameter cbConnStrOutMax :: <SQLSMALLINT>;
  output parameter pcbConnStrOut :: <LPSQLSMALLINT>;
  parameter fDriverCompletion :: <SQLUSMALLINT>;
  result value :: <SQLRETURN>;
  c-name: "SQLDriverConnect";
end;

define c-func-with-err SQLBrowseConnect
  parameter hdbc       :: <SQLHDBC>;
  parameter szConnStrIn :: <LPSQLCHAR>;
  parameter cbConnStrIn :: <SQLSMALLINT>;
  parameter szConnStrOut :: <LPSQLCHAR>;
  parameter cbConnStrOutMax :: <SQLSMALLINT>;
  output parameter pcbConnStrOut :: <LPSQLSMALLINT>;
  result value :: <SQLRETURN>;
  c-name: "SQLBrowseConnect";
end;

define c-func-with-err SQLBulkOperations
  parameter StatementHandle :: <SQLHSTMT>;
  parameter Operation  :: <SQLSMALLINT>;
  result value :: <SQLRETURN>;
  c-name: "SQLBulkOperations";
end;

define c-func-with-err SQLColAttributes
  parameter hstmt      :: <SQLHSTMT>;
  parameter icol       :: <SQLUSMALLINT>;
  parameter fDescType  :: <SQLUSMALLINT>;
  parameter rgbDesc    :: <SQLPOINTER>;
  parameter cbDescMax  :: <SQLSMALLINT>;
  output parameter pcbDesc    :: <LPSQLSMALLINT>;
  output parameter pfDesc     :: <LPSQLINTEGER>;
  result value :: <SQLRETURN>;
  c-name: "SQLColAttributes";
end;

define c-func-with-err SQLColumnPrivileges
  parameter hstmt      :: <SQLHSTMT>;
  parameter szCatalogName :: <LPSQLCHAR>;
  parameter cbCatalogName :: <SQLSMALLINT>;
  parameter szSchemaName :: <LPSQLCHAR>;
  parameter cbSchemaName :: <SQLSMALLINT>;
  parameter szTableName :: <LPSQLCHAR>;
  parameter cbTableName :: <SQLSMALLINT>;
  parameter szColumnName :: <LPSQLCHAR>;
  parameter cbColumnName :: <SQLSMALLINT>;
  result value :: <SQLRETURN>;
  c-name: "SQLColumnPrivileges";
end;

define c-func-with-err SQLDescribeParam
  parameter hstmt      :: <SQLHSTMT>;
  parameter ipar       :: <SQLUSMALLINT>;
  output parameter pfSqlType  :: <LPSQLSMALLINT>;
  output parameter pcbParamDef :: <LPSQLUINTEGER>;
  output parameter pibScale   :: <LPSQLSMALLINT>;
  output parameter pfNullable :: <LPSQLSMALLINT>;
  result value :: <SQLRETURN>;
  c-name: "SQLDescribeParam";
end;

define c-func-with-err SQLExtendedFetch
  parameter hstmt      :: <SQLHSTMT>;
  parameter fFetchType :: <SQLUSMALLINT>;
  parameter irow       :: <SQLINTEGER>;
  output parameter pcrow      :: <LPSQLUINTEGER>;
  output parameter rgfRowStatus :: <LPSQLUSMALLINT>;
  result value :: <SQLRETURN>;
  c-name: "SQLExtendedFetch";
end;

define c-func-with-err SQLForeignKeys
  parameter hstmt      :: <SQLHSTMT>;
  parameter szPkCatalogName :: <LPSQLCHAR>;
  parameter cbPkCatalogName :: <SQLSMALLINT>;
  parameter szPkSchemaName :: <LPSQLCHAR>;
  parameter cbPkSchemaName :: <SQLSMALLINT>;
  parameter szPkTableName :: <LPSQLCHAR>;
  parameter cbPkTableName :: <SQLSMALLINT>;
  parameter szFkCatalogName :: <LPSQLCHAR>;
  parameter cbFkCatalogName :: <SQLSMALLINT>;
  parameter szFkSchemaName :: <LPSQLCHAR>;
  parameter cbFkSchemaName :: <SQLSMALLINT>;
  parameter szFkTableName :: <LPSQLCHAR>;
  parameter cbFkTableName :: <SQLSMALLINT>;
  result value :: <SQLRETURN>;
  c-name: "SQLForeignKeys";
end;

define c-func-with-err SQLMoreResults
  parameter hstmt      :: <SQLHSTMT>;
  result value :: <SQLRETURN>;
  c-name: "SQLMoreResults";
end;

define c-func-with-err SQLNativeSql
  parameter hdbc       :: <SQLHDBC>;
  parameter szSqlStrIn :: <LPSQLCHAR>;
  parameter cbSqlStrIn :: <SQLINTEGER>;
  parameter szSqlStr   :: <LPSQLCHAR>;
  parameter cbSqlStrMax :: <SQLINTEGER>;
  output parameter pcbSqlStr  :: <LPSQLINTEGER>;
  result value :: <SQLRETURN>;
  c-name: "SQLNativeSql";
end;

define c-func-with-err SQLNumParams
  parameter hstmt      :: <SQLHSTMT>;
  output parameter pcpar      :: <LPSQLSMALLINT>;
  result value :: <SQLRETURN>;
  c-name: "SQLNumParams";
end;

define c-func-with-err SQLParamOptions
  parameter hstmt      :: <SQLHSTMT>;
  parameter crow       :: <SQLUINTEGER>;
  output parameter pirow      :: <LPSQLUINTEGER>;
  result value :: <SQLRETURN>;
  c-name: "SQLParamOptions";
end;

define c-func-with-err SQLPrimaryKeys
  parameter hstmt      :: <SQLHSTMT>;
  parameter szCatalogName :: <LPSQLCHAR>;
  parameter cbCatalogName :: <SQLSMALLINT>;
  parameter szSchemaName :: <LPSQLCHAR>;
  parameter cbSchemaName :: <SQLSMALLINT>;
  parameter szTableName :: <LPSQLCHAR>;
  parameter cbTableName :: <SQLSMALLINT>;
  result value :: <SQLRETURN>;
  c-name: "SQLPrimaryKeys";
end;

define c-func-with-err SQLProcedureColumns
  parameter hstmt      :: <SQLHSTMT>;
  parameter szCatalogName :: <LPSQLCHAR>;
  parameter cbCatalogName :: <SQLSMALLINT>;
  parameter szSchemaName :: <LPSQLCHAR>;
  parameter cbSchemaName :: <SQLSMALLINT>;
  parameter szProcName :: <LPSQLCHAR>;
  parameter cbProcName :: <SQLSMALLINT>;
  parameter szColumnName :: <LPSQLCHAR>;
  parameter cbColumnName :: <SQLSMALLINT>;
  result value :: <SQLRETURN>;
  c-name: "SQLProcedureColumns";
end;

define c-func-with-err SQLProcedures
  parameter hstmt      :: <SQLHSTMT>;
  parameter szCatalogName :: <LPSQLCHAR>;
  parameter cbCatalogName :: <SQLSMALLINT>;
  parameter szSchemaName :: <LPSQLCHAR>;
  parameter cbSchemaName :: <SQLSMALLINT>;
  parameter szProcName :: <LPSQLCHAR>;
  parameter cbProcName :: <SQLSMALLINT>;
  result value :: <SQLRETURN>;
  c-name: "SQLProcedures";
end;

define c-func-with-err SQLSetPos
  parameter hstmt      :: <SQLHSTMT>;
  parameter irow       :: <SQLUSMALLINT>;
  parameter fOption    :: <SQLUSMALLINT>;
  parameter fLock      :: <SQLUSMALLINT>;
  result value :: <SQLRETURN>;
  c-name: "SQLSetPos";
end;

define c-func-with-err SQLTablePrivileges
  parameter hstmt      :: <SQLHSTMT>;
  parameter szCatalogName :: <LPSQLCHAR>;
  parameter cbCatalogName :: <SQLSMALLINT>;
  parameter szSchemaName :: <LPSQLCHAR>;
  parameter cbSchemaName :: <SQLSMALLINT>;
  parameter szTableName :: <LPSQLCHAR>;
  parameter cbTableName :: <SQLSMALLINT>;
  result value :: <SQLRETURN>;
  c-name: "SQLTablePrivileges";
end;

define c-func-with-err SQLDrivers
  parameter henv       :: <SQLHENV>;
  parameter fDirection :: <SQLUSMALLINT>;
  parameter szDriverDesc :: <LPSQLCHAR>;
  parameter cbDriverDescMax :: <SQLSMALLINT>;
  output parameter pcbDriverDesc :: <LPSQLSMALLINT>;
  parameter szDriverAttributes :: <LPSQLCHAR>;
  parameter cbDrvrAttrMax :: <SQLSMALLINT>;
  output parameter pcbDrvrAttr :: <LPSQLSMALLINT>;
  result value :: <SQLRETURN>;
  c-name: "SQLDrivers";
end;

define c-func-with-err SQLBindParameter
  parameter hstmt      :: <SQLHSTMT>;
  parameter ipar       :: <SQLUSMALLINT>;
  parameter fParamType :: <SQLSMALLINT>;
  parameter fCType     :: <SQLSMALLINT>;
  parameter fSqlType   :: <SQLSMALLINT>;
  parameter cbColDef   :: <SQLUINTEGER>;
  parameter ibScale    :: <SQLSMALLINT>;
  parameter rgbValue   :: <SQLPOINTER>;
  parameter cbValueMax :: <SQLINTEGER>;
  parameter pcbValue   :: <LPSQLINTEGER>;
  result value :: <SQLRETURN>;
  c-name: "SQLBindParameter";
end;

define c-func-with-err SQLAllocHandleStd
  parameter fHandleType :: <SQLSMALLINT>;
  parameter hInput     :: <SQLHANDLE>;
  output parameter phOutput   :: <LPSQLHANDLE>;
  result value :: <SQLRETURN>;
  c-name: "SQLAllocHandleStd";
end;

define c-func-with-err SQLSetScrollOptions
  parameter hstmt      :: <SQLHSTMT>;
  parameter fConcurrency :: <SQLUSMALLINT>;
  parameter crowKeyset :: <SQLINTEGER>;
  parameter crowRowset :: <SQLUSMALLINT>;
  result value :: <SQLRETURN>;
  c-name: "SQLSetScrollOptions";
end;

/*  This junk is undocumented and uses types I don't know about.  I'm
    commenting it out until I find a need for it.

define c-func-with-err TraceOpenLogFile
  parameter lpwstr1    :: <LPWSTR>;
  parameter lpwstr2    :: <LPWSTR>;
  parameter dword3     :: <DWORD>;
  result value :: <RETCODE>;
  c-name: "TraceOpenLogFile";
end;

define c-func-with-err TraceCloseLogFile
  result value :: <RETCODE>;
  c-name: "TraceCloseLogFile";
end;

define c-func-with-err TraceReturn
  parameter retcode1   :: <RETCODE>;
  parameter retcode2   :: <RETCODE>;
  c-name: "TraceReturn";
end;

define c-func-with-err TraceVersion
  result value :: <DWORD>;
  c-name: "TraceVersion";
end;

*/
