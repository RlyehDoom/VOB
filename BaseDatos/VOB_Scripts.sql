USE [VOB]
GO
/****** Object:  StoredProcedure [dbo].[VerificaBalancesCombinadoPorIdPeriodo]    Script Date: 07-11-2016 19:12:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VerificaBalancesCombinadoPorIdPeriodo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[VerificaBalancesCombinadoPorIdPeriodo]
GO
/****** Object:  StoredProcedure [dbo].[sp_upgraddiagrams]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_upgraddiagrams]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_upgraddiagrams]
GO
/****** Object:  StoredProcedure [dbo].[sp_renamediagram]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_renamediagram]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_renamediagram]
GO
/****** Object:  StoredProcedure [dbo].[sp_helpdiagrams]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagrams]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_helpdiagrams]
GO
/****** Object:  StoredProcedure [dbo].[sp_helpdiagramdefinition]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagramdefinition]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_helpdiagramdefinition]
GO
/****** Object:  StoredProcedure [dbo].[sp_dropdiagram]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_dropdiagram]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_dropdiagram]
GO
/****** Object:  StoredProcedure [dbo].[sp_creatediagram]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_creatediagram]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_creatediagram]
GO
/****** Object:  StoredProcedure [dbo].[sp_alterdiagram]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_alterdiagram]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_alterdiagram]
GO
/****** Object:  StoredProcedure [dbo].[ReporteBalanceObtenerComentarios]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteBalanceObtenerComentarios]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ReporteBalanceObtenerComentarios]
GO
/****** Object:  StoredProcedure [dbo].[ReporteBalanceIndividualPorPeriodoCabecera]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteBalanceIndividualPorPeriodoCabecera]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ReporteBalanceIndividualPorPeriodoCabecera]
GO
/****** Object:  StoredProcedure [dbo].[ReporteBalanceIndividualCabecera]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteBalanceIndividualCabecera]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ReporteBalanceIndividualCabecera]
GO
/****** Object:  StoredProcedure [dbo].[ReporteBalanceDetallesMultiples]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteBalanceDetallesMultiples]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ReporteBalanceDetallesMultiples]
GO
/****** Object:  StoredProcedure [dbo].[ReporteBalanceDetalles]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteBalanceDetalles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ReporteBalanceDetalles]
GO
/****** Object:  StoredProcedure [dbo].[ObtieneVeCliente]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtieneVeCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ObtieneVeCliente]
GO
/****** Object:  StoredProcedure [dbo].[ObtieneTipoConceptos]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtieneTipoConceptos]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ObtieneTipoConceptos]
GO
/****** Object:  StoredProcedure [dbo].[ObtieneTipoCalidad]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtieneTipoCalidad]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ObtieneTipoCalidad]
GO
/****** Object:  StoredProcedure [dbo].[ObtieneTipoBalances]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtieneTipoBalances]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ObtieneTipoBalances]
GO
/****** Object:  StoredProcedure [dbo].[ObtieneMonedas]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtieneMonedas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ObtieneMonedas]
GO
/****** Object:  StoredProcedure [dbo].[ObtieneEstadosBalance]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtieneEstadosBalance]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ObtieneEstadosBalance]
GO
/****** Object:  StoredProcedure [dbo].[ObtieneClientes]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtieneClientes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ObtieneClientes]
GO
/****** Object:  StoredProcedure [dbo].[ObtieneClientePorIdRUT]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtieneClientePorIdRUT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ObtieneClientePorIdRUT]
GO
/****** Object:  StoredProcedure [dbo].[ObtieneAnalistas]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtieneAnalistas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ObtieneAnalistas]
GO
/****** Object:  StoredProcedure [dbo].[ObtenerRutsPeriodosCombinados]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtenerRutsPeriodosCombinados]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ObtenerRutsPeriodosCombinados]
GO
/****** Object:  StoredProcedure [dbo].[ObtenerPeriodosIngresados]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtenerPeriodosIngresados]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ObtenerPeriodosIngresados]
GO
/****** Object:  StoredProcedure [dbo].[ObtenerBalancesPeriodosCliente]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtenerBalancesPeriodosCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ObtenerBalancesPeriodosCliente]
GO
/****** Object:  StoredProcedure [dbo].[ObtenerBalancesDetalles]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtenerBalancesDetalles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ObtenerBalancesDetalles]
GO
/****** Object:  StoredProcedure [dbo].[ObtenerBalancesCombinadosPorPeriodo]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtenerBalancesCombinadosPorPeriodo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ObtenerBalancesCombinadosPorPeriodo]
GO
/****** Object:  StoredProcedure [dbo].[ObtenerBalancesClientes]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtenerBalancesClientes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ObtenerBalancesClientes]
GO
/****** Object:  StoredProcedure [dbo].[InsertarLog]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertarLog]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[InsertarLog]
GO
/****** Object:  StoredProcedure [dbo].[InsertarEditarCliente]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertarEditarCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[InsertarEditarCliente]
GO
/****** Object:  StoredProcedure [dbo].[InsertarEditarBalancePeriodo]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertarEditarBalancePeriodo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[InsertarEditarBalancePeriodo]
GO
/****** Object:  StoredProcedure [dbo].[InsertarEditarBalanceDetalleXML]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertarEditarBalanceDetalleXML]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[InsertarEditarBalanceDetalleXML]
GO
/****** Object:  StoredProcedure [dbo].[InsertarEditarBalanceDetallePorConcepto]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertarEditarBalanceDetallePorConcepto]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[InsertarEditarBalanceDetallePorConcepto]
GO
/****** Object:  StoredProcedure [dbo].[InsertarEditarBalanceDetalle]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertarEditarBalanceDetalle]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[InsertarEditarBalanceDetalle]
GO
/****** Object:  StoredProcedure [dbo].[InsertarEditarBalance]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertarEditarBalance]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[InsertarEditarBalance]
GO
/****** Object:  StoredProcedure [dbo].[InsertarEditarAnalista]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertarEditarAnalista]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[InsertarEditarAnalista]
GO
/****** Object:  StoredProcedure [dbo].[CalcularBalanceCombinadoPorPeriodo]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CalcularBalanceCombinadoPorPeriodo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CalcularBalanceCombinadoPorPeriodo]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Log_TipoBalance]') AND parent_object_id = OBJECT_ID(N'[dbo].[Log]'))
ALTER TABLE [dbo].[Log] DROP CONSTRAINT [FK_Log_TipoBalance]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Log_LogCategorias]') AND parent_object_id = OBJECT_ID(N'[dbo].[Log]'))
ALTER TABLE [dbo].[Log] DROP CONSTRAINT [FK_Log_LogCategorias]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConceptosGrupos_TipoGrupos]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConceptosGrupos]'))
ALTER TABLE [dbo].[ConceptosGrupos] DROP CONSTRAINT [FK_ConceptosGrupos_TipoGrupos]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Conceptos_TipoConceptos]') AND parent_object_id = OBJECT_ID(N'[dbo].[Conceptos]'))
ALTER TABLE [dbo].[Conceptos] DROP CONSTRAINT [FK_Conceptos_TipoConceptos]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Conceptos_TipoBalance]') AND parent_object_id = OBJECT_ID(N'[dbo].[Conceptos]'))
ALTER TABLE [dbo].[Conceptos] DROP CONSTRAINT [FK_Conceptos_TipoBalance]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Conceptos_ConceptosGrupos]') AND parent_object_id = OBJECT_ID(N'[dbo].[Conceptos]'))
ALTER TABLE [dbo].[Conceptos] DROP CONSTRAINT [FK_Conceptos_ConceptosGrupos]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Balances_TipoBalance]') AND parent_object_id = OBJECT_ID(N'[dbo].[Balances]'))
ALTER TABLE [dbo].[Balances] DROP CONSTRAINT [FK_Balances_TipoBalance]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Balances_Monedas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Balances]'))
ALTER TABLE [dbo].[Balances] DROP CONSTRAINT [FK_Balances_Monedas]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Balances_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Balances]'))
ALTER TABLE [dbo].[Balances] DROP CONSTRAINT [FK_Balances_Clientes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BalancePeriodo_TipoCalidad]') AND parent_object_id = OBJECT_ID(N'[dbo].[BalancePeriodo]'))
ALTER TABLE [dbo].[BalancePeriodo] DROP CONSTRAINT [FK_BalancePeriodo_TipoCalidad]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BalancePeriodo_Estados]') AND parent_object_id = OBJECT_ID(N'[dbo].[BalancePeriodo]'))
ALTER TABLE [dbo].[BalancePeriodo] DROP CONSTRAINT [FK_BalancePeriodo_Estados]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BalancePeriodo_Balances]') AND parent_object_id = OBJECT_ID(N'[dbo].[BalancePeriodo]'))
ALTER TABLE [dbo].[BalancePeriodo] DROP CONSTRAINT [FK_BalancePeriodo_Balances]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BalancePeriodo_Analistas]') AND parent_object_id = OBJECT_ID(N'[dbo].[BalancePeriodo]'))
ALTER TABLE [dbo].[BalancePeriodo] DROP CONSTRAINT [FK_BalancePeriodo_Analistas]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BalanceDetalle_BalancePeriodo]') AND parent_object_id = OBJECT_ID(N'[dbo].[BalanceDetalle]'))
ALTER TABLE [dbo].[BalanceDetalle] DROP CONSTRAINT [FK_BalanceDetalle_BalancePeriodo]
GO
/****** Object:  Index [UK_principal_name]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[sysdiagrams]') AND name = N'UK_principal_name')
ALTER TABLE [dbo].[sysdiagrams] DROP CONSTRAINT [UK_principal_name]
GO
/****** Object:  Index [IX_Clientes]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Clientes]') AND name = N'IX_Clientes')
DROP INDEX [IX_Clientes] ON [dbo].[Clientes]
GO
/****** Object:  Index [IX_Balances]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Balances]') AND name = N'IX_Balances')
DROP INDEX [IX_Balances] ON [dbo].[Balances]
GO
/****** Object:  Table [dbo].[TipoGrupos]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoGrupos]') AND type in (N'U'))
DROP TABLE [dbo].[TipoGrupos]
GO
/****** Object:  Table [dbo].[TipoConceptos]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoConceptos]') AND type in (N'U'))
DROP TABLE [dbo].[TipoConceptos]
GO
/****** Object:  Table [dbo].[TipoCalidad]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoCalidad]') AND type in (N'U'))
DROP TABLE [dbo].[TipoCalidad]
GO
/****** Object:  Table [dbo].[TipoBalance]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoBalance]') AND type in (N'U'))
DROP TABLE [dbo].[TipoBalance]
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sysdiagrams]') AND type in (N'U'))
DROP TABLE [dbo].[sysdiagrams]
GO
/****** Object:  Table [dbo].[Monedas]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Monedas]') AND type in (N'U'))
DROP TABLE [dbo].[Monedas]
GO
/****** Object:  Table [dbo].[LogCategorias]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogCategorias]') AND type in (N'U'))
DROP TABLE [dbo].[LogCategorias]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Log]') AND type in (N'U'))
DROP TABLE [dbo].[Log]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Estados]') AND type in (N'U'))
DROP TABLE [dbo].[Estados]
GO
/****** Object:  Table [dbo].[Ejecutivos]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ejecutivos]') AND type in (N'U'))
DROP TABLE [dbo].[Ejecutivos]
GO
/****** Object:  Table [dbo].[ConceptosGrupos]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConceptosGrupos]') AND type in (N'U'))
DROP TABLE [dbo].[ConceptosGrupos]
GO
/****** Object:  Table [dbo].[Conceptos]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Conceptos]') AND type in (N'U'))
DROP TABLE [dbo].[Conceptos]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clientes]') AND type in (N'U'))
DROP TABLE [dbo].[Clientes]
GO
/****** Object:  Table [dbo].[Balances]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Balances]') AND type in (N'U'))
DROP TABLE [dbo].[Balances]
GO
/****** Object:  Table [dbo].[BalancePeriodo]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BalancePeriodo]') AND type in (N'U'))
DROP TABLE [dbo].[BalancePeriodo]
GO
/****** Object:  Table [dbo].[BalanceDetalle]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BalanceDetalle]') AND type in (N'U'))
DROP TABLE [dbo].[BalanceDetalle]
GO
/****** Object:  Table [dbo].[Analistas]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Analistas]') AND type in (N'U'))
DROP TABLE [dbo].[Analistas]
GO
/****** Object:  UserDefinedFunction [dbo].[FuncionDividirString]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FuncionDividirString]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[FuncionDividirString]
GO
/****** Object:  UserDefinedFunction [dbo].[FormatearFechaCierre]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormatearFechaCierre]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[FormatearFechaCierre]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_diagramobjects]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_diagramobjects]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fn_diagramobjects]
GO
/****** Object:  UserDefinedTableType [dbo].[TVPConcepto]    Script Date: 07-11-2016 19:12:37 ******/
IF  EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'TVPConcepto' AND ss.name = N'dbo')
DROP TYPE [dbo].[TVPConcepto]
GO
/****** Object:  UserDefinedTableType [dbo].[TVPConcepto]    Script Date: 07-11-2016 19:12:37 ******/
IF NOT EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'TVPConcepto' AND ss.name = N'dbo')
CREATE TYPE [dbo].[TVPConcepto] AS TABLE(
	[IDConcepto] [int] NOT NULL,
	[IdPeriodo] [int] NOT NULL,
	[Monto] [float] NOT NULL,
	[MontoVisible] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](100) NULL,
	[Comentario] [text] NULL,
	[FechaCierre] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[IDConcepto] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedFunction [dbo].[fn_diagramobjects]    Script Date: 07-11-2016 19:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_diagramobjects]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
	CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N''dbo''
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N''dbo.sp_upgraddiagrams''),
			@id_sysdiagrams = object_id(N''dbo.sysdiagrams''),
			@id_helpdiagrams = object_id(N''dbo.sp_helpdiagrams''),
			@id_helpdiagramdefinition = object_id(N''dbo.sp_helpdiagramdefinition''),
			@id_creatediagram = object_id(N''dbo.sp_creatediagram''),
			@id_renamediagram = object_id(N''dbo.sp_renamediagram''),
			@id_alterdiagram = object_id(N''dbo.sp_alterdiagram''), 
			@id_dropdiagram = object_id(N''dbo.sp_dropdiagram'')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
	' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[FormatearFechaCierre]    Script Date: 07-11-2016 19:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormatearFechaCierre]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		José Luis Y.R - Iconexa S.A
-- Create date: 21-08-2016
-- Description:	
-- =============================================
CREATE FUNCTION [dbo].[FormatearFechaCierre]
(
	@FechaCierre NVARCHAR(10)
)
RETURNS INT
AS
BEGIN
	-- Declare the return variable here
	DECLARE @RetornoFinal int, @RetornoParcial NVARCHAR(10)

	IF (@FechaCierre IS NOT NULL AND @FechaCierre <> '''')
	BEGIN
		SET @FechaCierre = REPLACE(@FechaCierre,''-'','''')
		SET @FechaCierre = REPLACE(@FechaCierre,''/'','''')
		SET @FechaCierre = REPLACE(@FechaCierre,'' '','''')

		SET @RetornoParcial = SUBSTRING(@FechaCierre,5,4)
		SET @RetornoParcial = @RetornoParcial + SUBSTRING(@FechaCierre,3,2)
		SET @RetornoParcial = @RetornoParcial + SUBSTRING(@FechaCierre,1,2)

		SET @RetornoFinal = CAST(@RetornoParcial AS INT)
	END
	ELSE
	BEGIN
		SET @RetornoFinal = NULL
	END
	-- Return the result of the function
	RETURN @RetornoFinal

END
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[FuncionDividirString]    Script Date: 07-11-2016 19:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FuncionDividirString]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<José Luis Y.R>
-- Create date: <31-12-2016>
-- Description:	<>
-- =============================================
CREATE FUNCTION [dbo].[FuncionDividirString](
    @sInputList VARCHAR(8000)
  , @sDelimiter VARCHAR(8000) = '','' 
) 
RETURNS @List TABLE (item VARCHAR(8000))
BEGIN
DECLARE @sItem VARCHAR(8000)
WHILE CHARINDEX(@sDelimiter,@sInputList,0) <> 0
 BEGIN
 SELECT 
	@sItem=RTRIM(LTRIM(SUBSTRING(@sInputList,1,CHARINDEX(@sDelimiter,@sInputList,0)-1))),
	@sInputList=RTRIM(LTRIM(SUBSTRING(@sInputList,CHARINDEX(@sDelimiter,@sInputList,0)+LEN(@sDelimiter),LEN(@sInputList))))

	IF LEN(@sItem) > 0
	INSERT INTO @List SELECT @sItem
END

IF LEN(@sInputList) > 0
	INSERT INTO @List SELECT @sInputList
RETURN

END
' 
END

GO
/****** Object:  Table [dbo].[Analistas]    Script Date: 07-11-2016 19:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Analistas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Analistas](
	[IdAnalista] [int] IDENTITY(1,1) NOT NULL,
	[NombreCompleto] [nvarchar](250) NULL,
	[UsuarioNT] [nvarchar](50) NULL,
 CONSTRAINT [PK_Analistas] PRIMARY KEY CLUSTERED 
(
	[IdAnalista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
END
GO
/****** Object:  Table [dbo].[BalanceDetalle]    Script Date: 07-11-2016 19:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BalanceDetalle]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BalanceDetalle](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdPeriodo] [int] NOT NULL,
	[IdConcepto] [int] NOT NULL,
	[FechaCierre] [int] NOT NULL,
	[Monto] [float] NOT NULL,
	[MontoVisible] [nvarchar](50) NULL,
	[Descripcion] [nvarchar](100) NULL,
	[FechaCreacion] [smalldatetime] NOT NULL,
	[FechaModificacion] [smalldatetime] NOT NULL,
	[Comentario] [text] NULL,
	[UltimoUsuario] [nvarchar](50) NULL,
 CONSTRAINT [PK_Conceptos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
END
GO
/****** Object:  Table [dbo].[BalancePeriodo]    Script Date: 07-11-2016 19:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BalancePeriodo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BalancePeriodo](
	[IdPeriodo] [int] IDENTITY(1,1) NOT NULL,
	[IdBalance] [int] NULL,
	[Periodo] [int] NOT NULL,
	[Meses] [tinyint] NOT NULL,
	[CantidadEmpresas] [smallint] NULL,
	[Clientes] [nvarchar](100) NOT NULL,
	[PeriodosCombinados] [nvarchar](100) NULL,
	[IdEstado] [tinyint] NOT NULL,
	[IdCalidad] [tinyint] NOT NULL,
	[IdAnalista] [int] NOT NULL,
	[FechaCreacion] [smalldatetime] NOT NULL,
	[FechaModificacion] [smalldatetime] NOT NULL,
	[UltimoUsuario] [nvarchar](50) NOT NULL,
	[Comentarios] [nvarchar](max) NULL,
 CONSTRAINT [PK_BalancePeriodo] PRIMARY KEY CLUSTERED 
(
	[IdPeriodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
END
GO
/****** Object:  Table [dbo].[Balances]    Script Date: 07-11-2016 19:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Balances]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Balances](
	[IdBalance] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdMoneda] [tinyint] NOT NULL,
	[IdTipoBalance] [tinyint] NOT NULL,
	[FormatoMoneda] [nvarchar](50) NOT NULL,
	[Ejecutivo] [nvarchar](100) NULL,
	[FechaCreacion] [smalldatetime] NOT NULL,
	[FechaModificacion] [smalldatetime] NOT NULL,
	[UltimoUsuario] [nvarchar](50) NULL,
 CONSTRAINT [PK_Balances] PRIMARY KEY CLUSTERED 
(
	[IdBalance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
END
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 07-11-2016 19:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clientes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Clientes](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[IdClienteBanco] [int] NULL,
	[RUTCliente] [nvarchar](10) NULL,
	[NombreCompleto] [nvarchar](250) NULL,
	[RazonSocial] [nvarchar](250) NULL,
	[Ejecutivo] [nvarchar](100) NULL,
	[Giro] [nvarchar](250) NULL,
	[CodActivo] [int] NULL,
	[Segmento] [nvarchar](50) NULL,
	[CRD] [nvarchar](50) NULL,
	[VE] [nvarchar](50) NULL,
	[ClienteDesde] [smalldatetime] NULL,
	[UltimoUsuario] [nvarchar](50) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
END
GO
/****** Object:  Table [dbo].[Conceptos]    Script Date: 07-11-2016 19:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Conceptos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Conceptos](
	[IdConcepto] [int] NOT NULL,
	[IdTipoBalance] [tinyint] NOT NULL,
	[IdInterno] [int] NULL,
	[IdTipoConcepto] [tinyint] NOT NULL,
	[IdGrupo] [smallint] NULL,
	[Concepto] [nvarchar](250) NOT NULL,
	[ConceptoFormato] [nvarchar](100) NULL,
 CONSTRAINT [PK_Conceptos_1] PRIMARY KEY CLUSTERED 
(
	[IdConcepto] ASC,
	[IdTipoBalance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
END
GO
/****** Object:  Table [dbo].[ConceptosGrupos]    Script Date: 07-11-2016 19:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConceptosGrupos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ConceptosGrupos](
	[IdGrupo] [smallint] NOT NULL,
	[IdTipoBalance] [tinyint] NULL,
	[IdTipoGrupo] [smallint] NULL,
	[NombreSubGrupo] [nvarchar](100) NULL,
 CONSTRAINT [PK_ConceptosGrupos] PRIMARY KEY CLUSTERED 
(
	[IdGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
END
GO
/****** Object:  Table [dbo].[Ejecutivos]    Script Date: 07-11-2016 19:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ejecutivos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ejecutivos](
	[IdEjecutivo] [int] IDENTITY(1,1) NOT NULL,
	[Rut] [nvarchar](10) NOT NULL,
	[CodigoPerfil] [smallint] NOT NULL,
 CONSTRAINT [PK_Ejecutivos] PRIMARY KEY CLUSTERED 
(
	[IdEjecutivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
END
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 07-11-2016 19:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Estados]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Estados](
	[IdEstado] [tinyint] NOT NULL,
	[Estado] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
END
GO
/****** Object:  Table [dbo].[Log]    Script Date: 07-11-2016 19:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Log](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IdTipoBalance] [tinyint] NOT NULL,
	[IdCategoria] [smallint] NOT NULL,
	[Origen] [tinyint] NOT NULL,
	[Usuario] [nvarchar](50) NOT NULL,
	[FechaAcceso] [smalldatetime] NOT NULL,
	[TipoConsulta] [tinyint] NOT NULL,
	[DatosConsulta] [xml] NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
END
GO
/****** Object:  Table [dbo].[LogCategorias]    Script Date: 07-11-2016 19:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogCategorias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LogCategorias](
	[IdCategoria] [smallint] NOT NULL,
	[Categoria] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_LogCategorias] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
END
GO
/****** Object:  Table [dbo].[Monedas]    Script Date: 07-11-2016 19:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Monedas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Monedas](
	[IdMoneda] [tinyint] IDENTITY(1,1) NOT NULL,
	[Moneda] [nvarchar](50) NULL,
	[Simbolo] [nvarchar](4) NULL,
 CONSTRAINT [PK_Monedas] PRIMARY KEY CLUSTERED 
(
	[IdMoneda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
END
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 07-11-2016 19:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sysdiagrams]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sysdiagrams](
	[name] [sysname] NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[diagram_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
END
GO
/****** Object:  Table [dbo].[TipoBalance]    Script Date: 07-11-2016 19:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoBalance]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TipoBalance](
	[IdTipoBalance] [tinyint] NOT NULL,
	[TipoBalance] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TipoBalance] PRIMARY KEY CLUSTERED 
(
	[IdTipoBalance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
END
GO
/****** Object:  Table [dbo].[TipoCalidad]    Script Date: 07-11-2016 19:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoCalidad]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TipoCalidad](
	[IdCalidad] [tinyint] IDENTITY(1,1) NOT NULL,
	[Calidad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TipoCalidad] PRIMARY KEY CLUSTERED 
(
	[IdCalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
END
GO
/****** Object:  Table [dbo].[TipoConceptos]    Script Date: 07-11-2016 19:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoConceptos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TipoConceptos](
	[IdTipoConcepto] [tinyint] NOT NULL,
	[TipoConcepto] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_TipoConcepto] PRIMARY KEY CLUSTERED 
(
	[IdTipoConcepto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
END
GO
/****** Object:  Table [dbo].[TipoGrupos]    Script Date: 07-11-2016 19:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoGrupos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TipoGrupos](
	[IdTipoGrupo] [smallint] NOT NULL,
	[NombreTipoGrupo] [nvarchar](100) NULL,
 CONSTRAINT [PK_TipoGrupos] PRIMARY KEY CLUSTERED 
(
	[IdTipoGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Analistas] ON 

INSERT [dbo].[Analistas] ([IdAnalista], [NombreCompleto], [UsuarioNT]) VALUES (1, N'Isaias', NULL)
INSERT [dbo].[Analistas] ([IdAnalista], [NombreCompleto], [UsuarioNT]) VALUES (2, N'José Luis Yañez Rojas', N'infodom\josey')
SET IDENTITY_INSERT [dbo].[Analistas] OFF
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([IdCliente], [IdClienteBanco], [RUTCliente], [NombreCompleto], [RazonSocial], [Ejecutivo], [Giro], [CodActivo], [Segmento], [CRD], [VE], [ClienteDesde], [UltimoUsuario]) VALUES (1, NULL, N'910210009', NULL, N'MADECO SA', NULL, NULL, 62, NULL, N'SC', N'1', CAST(N'1987-05-28T00:00:00' AS SmallDateTime), N'INFODOM\josey')
INSERT [dbo].[Clientes] ([IdCliente], [IdClienteBanco], [RUTCliente], [NombreCompleto], [RazonSocial], [Ejecutivo], [Giro], [CodActivo], [Segmento], [CRD], [VE], [ClienteDesde], [UltimoUsuario]) VALUES (3, NULL, N'555555555', NULL, N'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'INFODOM\isaiasp')
INSERT [dbo].[Clientes] ([IdCliente], [IdClienteBanco], [RUTCliente], [NombreCompleto], [RazonSocial], [Ejecutivo], [Giro], [CodActivo], [Segmento], [CRD], [VE], [ClienteDesde], [UltimoUsuario]) VALUES (4, NULL, N'333333333', NULL, N'CLIENTE 333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'INFODOM\isaiasp')
INSERT [dbo].[Clientes] ([IdCliente], [IdClienteBanco], [RUTCliente], [NombreCompleto], [RazonSocial], [Ejecutivo], [Giro], [CodActivo], [Segmento], [CRD], [VE], [ClienteDesde], [UltimoUsuario]) VALUES (5, NULL, N'444444444', NULL, N'CLIENTE 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'INFODOM\isaiasp')
INSERT [dbo].[Clientes] ([IdCliente], [IdClienteBanco], [RUTCliente], [NombreCompleto], [RazonSocial], [Ejecutivo], [Giro], [CodActivo], [Segmento], [CRD], [VE], [ClienteDesde], [UltimoUsuario]) VALUES (6, NULL, N'666666666', NULL, N'CLIENTE 5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'INFODOM\isaiasp')
INSERT [dbo].[Clientes] ([IdCliente], [IdClienteBanco], [RUTCliente], [NombreCompleto], [RazonSocial], [Ejecutivo], [Giro], [CodActivo], [Segmento], [CRD], [VE], [ClienteDesde], [UltimoUsuario]) VALUES (7, NULL, N'777777777', NULL, N'CLIENTE 7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'INFODOM\isaiasp')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (1, 1, NULL, 7, 1, N'Variación % Ventas    //    Ventas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (1, 2, NULL, 7, 1, N'Variación % Ventas    //    Ventas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (1, 3, NULL, 7, 1, N'Variación % Ventas    //    Ventas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (2, 1, NULL, 7, 1, N'% Sobre (Bajo) Ventas de Equilibrio', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (2, 2, NULL, 7, 1, N'% Sobre (Bajo) Ventas de Equilibrio', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (2, 3, NULL, 7, 1, N'% Sobre (Bajo) Ventas de Equilibrio', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (3, 1, NULL, 7, 1, N'Ventas / Activos Totales   (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (3, 2, NULL, 7, 1, N'Ventas / Activos Totales   (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (3, 3, NULL, 7, 1, N'Ventas / Activos Totales   (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (4, 1, NULL, 7, 1, N'Ventas / Activos Fijos Físicos  (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (4, 2, NULL, 7, 1, N'Ventas / Activos Fijos Físicos  (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (4, 3, NULL, 7, 1, N'Ventas / Activos Fijos Físicos  (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (5, 1, NULL, 7, 1, N'Margen EBITDA  //  EBITDA', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (5, 2, NULL, 7, 1, N'Margen EBITDA  //  EBITDA', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (5, 3, NULL, 7, 1, N'Margen EBITDA  //  EBITDA', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (6, 1, NULL, 7, 2, N'Rentabilidad sobre Activos (ROA)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (6, 2, NULL, 7, 2, N'Rentabilidad sobre Activos (ROA)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (6, 3, NULL, 7, 2, N'Rentabilidad sobre Activos (ROA)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (7, 1, NULL, 7, 2, N'Rentabilidad sobre Patrimonio (ROE)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (7, 2, NULL, 7, 2, N'Rentabilidad sobre Patrimonio (ROE)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (7, 3, NULL, 7, 2, N'Rentabilidad sobre Patrimonio (ROE)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (8, 1, NULL, 7, 3, N'Capital de Trabajo Neto', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (8, 2, NULL, 7, 3, N'Capital de Trabajo Neto', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (8, 3, NULL, 7, 3, N'Capital de Trabajo Neto', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (9, 1, NULL, 7, 3, N'Razón Corriente (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (9, 2, NULL, 7, 3, N'Razón Corriente (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (9, 3, NULL, 7, 3, N'Razón Corriente (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (10, 1, NULL, 7, 3, N'(Caja+DP+CxC) / Pasivo Circulante (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (10, 2, NULL, 7, 3, N'(Caja+DP+CxC) / Pasivo Circulante (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (10, 3, NULL, 7, 3, N'(Caja+DP+CxC) / Pasivo Circulante (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (11, 1, NULL, 7, 3, N'Liberación / (Requerimiento) de Capital de Trabajo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (11, 2, NULL, 7, 3, N'Liberación / (Requerimiento) de Capital de Trabajo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (11, 3, NULL, 7, 3, N'Liberación / (Requerimiento) de Capital de Trabajo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (12, 1, NULL, 7, 3, N'Permanencia de Cuentas por Cobrar (días)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (12, 2, NULL, 7, 3, N'Permanencia de Cuentas por Cobrar (días)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (12, 3, NULL, 7, 3, N'Permanencia de Cuentas por Cobrar (días)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (13, 1, NULL, 7, 3, N'Permanencia de Existencias (días)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (13, 2, NULL, 7, 3, N'Permanencia de Existencias (días)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (13, 3, NULL, 7, 3, N'Permanencia de Existencias (días)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (14, 1, NULL, 7, 3, N'Permanencia de Cuentas por Pagar (días)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (14, 2, NULL, 7, 3, N'Permanencia de Cuentas por Pagar (días)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (14, 3, NULL, 7, 3, N'Permanencia de Cuentas por Pagar (días)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (15, 1, NULL, 7, 4, N'Patrimonio Neto Tangible', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (15, 2, NULL, 7, 4, N'Patrimonio Neto Tangible', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (15, 3, NULL, 7, 4, N'Patrimonio Neto Tangible', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (16, 1, NULL, 7, 4, N'Leverage   (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (16, 2, NULL, 7, 4, N'Leverage   (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (16, 3, NULL, 7, 4, N'Leverage   (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (17, 1, NULL, 7, 4, N'Leverage Ajustado  (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (17, 2, NULL, 7, 4, N'Leverage Ajustado  (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (17, 3, NULL, 7, 4, N'Leverage Ajustado  (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (18, 1, NULL, 7, 4, N'Pasivo Exigible / EBITDA   (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (18, 2, NULL, 7, 4, N'Pasivo Exigible / EBITDA   (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (18, 3, NULL, 7, 4, N'Pasivo Exigible / EBITDA   (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (19, 1, NULL, 7, 4, N'Pasivos Financieros / EBITDA (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (19, 2, NULL, 7, 4, N'Pasivos Financieros / EBITDA (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (19, 3, NULL, 7, 4, N'Pasivos Financieros / EBITDA (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (20, 1, NULL, 7, 4, N'EBITDA / Gastos Financieros   (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (20, 2, NULL, 7, 4, N'EBITDA / Gastos Financieros   (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (20, 3, NULL, 7, 4, N'EBITDA / Gastos Financieros   (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (21, 1, NULL, 7, 4, N'EBITDA / (Gtos. Fins.+Vcto. CP de LP)  (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (21, 2, NULL, 7, 4, N'EBITDA / (Gtos. Fins.+Vcto. CP de LP)  (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (21, 3, NULL, 7, 4, N'EBITDA / (Gtos. Fins.+Vcto. CP de LP)  (veces)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (22, 1, NULL, 7, 5, N'EBITDA', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (22, 2, NULL, 7, 5, N'EBITDA', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (22, 3, NULL, 7, 5, N'EBITDA', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (23, 1, NULL, 7, 5, N'(-) Gastos Financieros', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (23, 2, NULL, 7, 5, N'(-) Gastos Financieros', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (23, 3, NULL, 7, 5, N'(-) Gastos Financieros', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (24, 1, NULL, 7, 5, N'(-) Impuestos', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (24, 2, NULL, 7, 5, N'(-) Impuestos', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (24, 3, NULL, 7, 5, N'(-) Impuestos', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (25, 1, NULL, 7, 5, N'(-) Retiros', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (25, 2, NULL, 7, 5, N'(-) Retiros', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (25, 3, NULL, 7, 5, N'(-) Retiros', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (26, 1, NULL, 7, 5, N'(-) Inversiones en Activo Fijo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (26, 2, NULL, 7, 5, N'(-) Inversiones en Activo Fijo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (26, 3, NULL, 7, 5, N'(-) Inversiones en Activo Fijo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (27, 1, NULL, 7, 5, N'(+) Otros Flujo No Operacionales Netos', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (27, 2, NULL, 7, 5, N'(+) Otros Flujo No Operacionales Netos', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (27, 3, NULL, 7, 5, N'(+) Otros Flujo No Operacionales Netos', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (28, 1, NULL, 7, 5, N'FLUJO LIBRE', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (28, 2, NULL, 7, 5, N'FLUJO LIBRE', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (28, 3, NULL, 7, 5, N'FLUJO LIBRE', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (29, 1, NULL, 7, 5, N'Aumento / (Disminución) Cuentas por Cobrar', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (29, 2, NULL, 7, 5, N'Aumento / (Disminución) Cuentas por Cobrar', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (29, 3, NULL, 7, 5, N'Aumento / (Disminución) Cuentas por Cobrar', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (30, 1, NULL, 7, 5, N'Aumento / (Disminución) Existencias', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (30, 2, NULL, 7, 5, N'Aumento / (Disminución) Existencias', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (30, 3, NULL, 7, 5, N'Aumento / (Disminución) Existencias', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (31, 1, NULL, 7, 5, N'Aumento / (Disminución) Crédito Proveedores', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (31, 2, NULL, 7, 5, N'Aumento / (Disminución) Crédito Proveedores', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (31, 3, NULL, 7, 5, N'Aumento / (Disminución) Crédito Proveedores', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (32, 1, NULL, 7, 5, N'FLUJO DE CAJA DESPUÉS DE VARIACIÓN DE CAPITAL DE TRABAJO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (32, 2, NULL, 7, 5, N'FLUJO DE CAJA DESPUÉS DE VARIACIÓN DE CAPITAL DE TRABAJO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (32, 3, NULL, 7, 5, N'FLUJO DE CAJA DESPUÉS DE VARIACIÓN DE CAPITAL DE TRABAJO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (33, 1, NULL, 7, 5, N'Aumento / (Disminución) Otros Activos Circulantes', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (33, 2, NULL, 7, 5, N'Aumento / (Disminución) Otros Activos Circulantes', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (33, 3, NULL, 7, 5, N'Aumento / (Disminución) Otros Activos Circulantes', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (34, 1, NULL, 7, 5, N'Aumento / (Disminución) uso de Líneas Bancarias', N'0')
GO
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (34, 2, NULL, 7, 5, N'Aumento / (Disminución) uso de Líneas Bancarias', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (34, 3, NULL, 7, 5, N'Aumento / (Disminución) uso de Líneas Bancarias', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (35, 1, NULL, 7, 5, N'Aumento / (Disminución) Otros Pasivos Circulantes', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (35, 2, NULL, 7, 5, N'Aumento / (Disminución) Otros Pasivos Circulantes', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (35, 3, NULL, 7, 5, N'Aumento / (Disminución) Otros Pasivos Circulantes', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (36, 1, NULL, 7, 5, N'FLUJO DE CAJA DESPUÉS DE VARIACIONES DE CORTO PLAZO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (36, 2, NULL, 7, 5, N'FLUJO DE CAJA DESPUÉS DE VARIACIONES DE CORTO PLAZO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (36, 3, NULL, 7, 5, N'FLUJO DE CAJA DESPUÉS DE VARIACIONES DE CORTO PLAZO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (37, 1, NULL, 7, 5, N'Aumento / (Disminución) Inversión en EE.RR.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (37, 2, NULL, 7, 5, N'Aumento / (Disminución) Inversión en EE.RR.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (37, 3, NULL, 7, 5, N'Aumento / (Disminución) Inversión en EE.RR.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (38, 1, NULL, 7, 5, N'Aumento / (Disminución) Otros Activos Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (38, 2, NULL, 7, 5, N'Aumento / (Disminución) Otros Activos Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (38, 3, NULL, 7, 5, N'Aumento / (Disminución) Otros Activos Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (39, 1, NULL, 7, 5, N'FLUJO DE CAJA ANTES DE FINANCIAMIENTO DE LARGO PLAZO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (39, 2, NULL, 7, 5, N'FLUJO DE CAJA ANTES DE FINANCIAMIENTO DE LARGO PLAZO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (39, 3, NULL, 7, 5, N'FLUJO DE CAJA ANTES DE FINANCIAMIENTO DE LARGO PLAZO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (40, 1, NULL, 7, 5, N'Aportes de Capital u Otros Aumentos Patrimoniales', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (40, 2, NULL, 7, 5, N'Aportes de Capital u Otros Aumentos Patrimoniales', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (40, 3, NULL, 7, 5, N'Aportes de Capital u Otros Aumentos Patrimoniales', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (41, 1, NULL, 7, 5, N'Venta de Activo Fijo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (41, 2, NULL, 7, 5, N'Venta de Activo Fijo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (41, 3, NULL, 7, 5, N'Venta de Activo Fijo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (42, 1, NULL, 7, 5, N'Aumento / (Disminución) Deuda Bancaria de Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (42, 2, NULL, 7, 5, N'Aumento / (Disminución) Deuda Bancaria de Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (42, 3, NULL, 7, 5, N'Aumento / (Disminución) Deuda Bancaria de Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (43, 1, NULL, 7, 5, N'Aumento / (Disminución) Financiamiento Leasing Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (43, 2, NULL, 7, 5, N'Aumento / (Disminución) Financiamiento Leasing Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (43, 3, NULL, 7, 5, N'Aumento / (Disminución) Financiamiento Leasing Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (44, 1, NULL, 7, 5, N'Aumento / (Disminución) Obligaciones con el Público', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (44, 2, NULL, 7, 5, N'Aumento / (Disminución) Obligaciones con el Público', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (44, 3, NULL, 7, 5, N'Aumento / (Disminución) Obligaciones con el Público', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (45, 1, NULL, 7, 5, N'Aumento / (Disminución) Otros Pasivos Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (45, 2, NULL, 7, 5, N'Aumento / (Disminución) Otros Pasivos Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (45, 3, NULL, 7, 5, N'Aumento / (Disminución) Otros Pasivos Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (46, 1, NULL, 7, 5, N'FINANCIAMIENTO DE LARGO PLAZO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (46, 2, NULL, 7, 5, N'FINANCIAMIENTO DE LARGO PLAZO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (46, 3, NULL, 7, 5, N'FINANCIAMIENTO DE LARGO PLAZO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (47, 1, NULL, 7, 5, N'VARIACIÓN CAJA Y VALORES NEGOCIABLES', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (47, 2, NULL, 7, 5, N'VARIACIÓN CAJA Y VALORES NEGOCIABLES', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (47, 3, NULL, 7, 5, N'VARIACIÓN CAJA Y VALORES NEGOCIABLES', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (48, 1, NULL, 7, 6, N'Total Deuda SBIF', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (48, 3, NULL, 7, 6, N'Total Deuda SBIF', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (49, 1, NULL, 1, 6, N'Deuda Directa', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (49, 3, NULL, 1, 6, N'Deuda Directa', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (50, 1, NULL, 1, 6, N'Deuda Contingente', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (50, 3, NULL, 1, 6, N'Deuda Contingente', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (51, 1, NULL, 1, 6, N'Total Deuda Leasing', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (51, 3, NULL, 1, 6, N'Total Deuda Leasing', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (52, 1, NULL, 1, 6, N'Total Deuda Factoring', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (52, 3, NULL, 1, 6, N'Total Deuda Factoring', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (53, 1, 1, 1, 7, N'Caja y Bancos', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (53, 2, 1, 1, 7, N'Caja y Bancos', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (53, 3, 1, 1, 7, N'Caja y Bancos', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (54, 1, 2, 1, 7, N'Valores Negociables y Depósitos a Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (54, 2, 2, 1, 7, N'Valores Negociables y Depósitos a Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (54, 3, 2, 1, 7, N'Valores Negociables y Depósitos a Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (55, 1, 3, 1, 7, N'Deudores por Ventas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (55, 2, 3, 1, 7, N'Deudores por Ventas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (55, 3, 3, 1, 7, N'Deudores por Ventas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (56, 1, 4, 1, 7, N'Varios Deudores', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (56, 2, 4, 1, 7, N'Varios Deudores', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (56, 3, 4, 1, 7, N'Varios Deudores', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (57, 1, 5, 1, 7, N'Existencias', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (57, 2, 5, 1, 7, N'Existencias', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (57, 3, 5, 1, 7, N'Existencias', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (58, 1, 6, 1, 7, N'Impuestos por Recuperar', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (58, 2, 6, 1, 7, N'Impuestos por Recuperar', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (58, 3, 6, 1, 7, N'Impuestos por Recuperar', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (59, 1, 7, 1, 7, N'Gastos Pagados por Anticipado', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (59, 2, 7, 1, 7, N'Gastos Pagados por Anticipado', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (59, 3, 7, 1, 7, N'Gastos Pagados por Anticipado', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (60, 1, 8, 1, 7, N'Anticipos a Proveedores', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (60, 2, 8, 1, 7, N'Anticipos a Proveedores', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (60, 3, 8, 1, 7, N'Anticipos a Proveedores', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (61, 1, 9, 1, 7, N'Cuentas por Cobrar Empresas Relacionadas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (61, 2, 9, 1, 7, N'Cuentas por Cobrar Empresas Relacionadas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (61, 3, 9, 1, 7, N'Cuentas por Cobrar Empresas Relacionadas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (62, 1, 10, 1, 7, N'Otros Activos Circulantes', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (62, 2, 10, 1, 7, N'Otros Activos Circulantes', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (62, 3, 10, 1, 7, N'Otros Activos Circulantes', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (63, 1, 11, 7, 7, N'TOTAL ACTIVO CIRCULANTE', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (63, 2, 11, 7, 7, N'TOTAL ACTIVO CIRCULANTE', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (63, 3, 11, 7, 7, N'TOTAL ACTIVO CIRCULANTE', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (64, 1, 12, 1, 7, N'Activos Fijos (Bienes Raices)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (64, 2, 12, 1, 7, N'Activos Fijos (Bienes Raices)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (64, 3, 12, 1, 7, N'Activos Fijos (Bienes Raices)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (65, 1, 13, 1, 7, N'Activos Fijos (Vehiculos - Maquinarias - Equipos)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (65, 2, 13, 1, 7, N'Activos Fijos (Vehiculos - Maquinarias - Equipos)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (65, 3, 13, 1, 7, N'Activos Fijos (Vehiculos - Maquinarias - Equipos)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (66, 1, 14, 1, 7, N'Activos Fijos bajo contrato Leasing', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (66, 2, 14, 1, 7, N'Activos Fijos bajo contrato Leasing', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (66, 3, 14, 1, 7, N'Activos Fijos bajo contrato Leasing', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (67, 1, 15, 1, 7, N'Otros Activos Fijos Distintos a los Anteriores', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (67, 2, 15, 1, 7, N'Otros Activos Fijos Distintos a los Anteriores', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (67, 3, 15, 1, 7, N'Otros Activos Fijos Distintos a los Anteriores', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (68, 1, 16, 1, 7, N'Depreciación Acumulada', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (68, 2, 16, 1, 7, N'Depreciación Acumulada', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (68, 3, 16, 1, 7, N'Depreciación Acumulada', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (69, 1, 17, 7, 7, N'TOTAL ACTIVOS FIJOS FÍSICOS', N'N')
GO
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (69, 2, 17, 7, 7, N'TOTAL ACTIVOS FIJOS FÍSICOS', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (69, 3, 17, 7, 7, N'TOTAL ACTIVOS FIJOS FÍSICOS', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (70, 1, 18, 1, 7, N'Inversión en Empresas Relacionadas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (70, 2, 18, 1, 7, N'Inversión en Empresas Relacionadas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (70, 3, 18, 1, 7, N'Inversión en Empresas Relacionadas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (71, 1, 19, 1, 7, N'Documentos y Cuentas por Cobrar EE.RR. L.P.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (71, 2, 19, 1, 7, N'Documentos y Cuentas por Cobrar EE.RR. L.P.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (71, 3, 19, 1, 7, N'Documentos y Cuentas por Cobrar EE.RR. L.P.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (72, 1, 20, 1, 7, N'Otros Documentos y Cuentas por Cobrar L.P.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (72, 2, 20, 1, 7, N'Otros Documentos y Cuentas por Cobrar L.P.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (72, 3, 20, 1, 7, N'Otros Documentos y Cuentas por Cobrar L.P.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (73, 1, 21, 1, 7, N'Activos Intangibles', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (73, 2, 21, 1, 7, N'Activos Intangibles', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (73, 3, 21, 1, 7, N'Activos Intangibles', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (74, 1, 22, 1, 7, N'Otros Activos L.P.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (74, 2, 22, 1, 7, N'Otros Activos L.P.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (74, 3, 22, 1, 7, N'Otros Activos L.P.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (75, 1, 23, 7, 7, N'TOTAL OTROS ACTIVOS FIJOS', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (75, 2, 23, 7, 7, N'TOTAL OTROS ACTIVOS FIJOS', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (75, 3, 23, 7, 7, N'TOTAL OTROS ACTIVOS FIJOS', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (76, 1, 24, 7, 7, N'TOTAL ACTIVOS', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (76, 2, 24, 7, 7, N'TOTAL ACTIVOS', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (76, 3, 24, 7, 7, N'TOTAL ACTIVOS', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (77, 1, 25, 1, 7, N'Deuda Bancaria Corto Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (77, 2, 25, 1, 7, N'Deuda Bancaria Corto Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (77, 3, 25, 1, 7, N'Deuda Bancaria Corto Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (78, 1, 26, 1, 7, N'Deuda Bancaria L.P. con vto. en el año', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (78, 2, 26, 1, 7, N'Deuda Bancaria L.P. con vto. en el año', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (78, 3, 26, 1, 7, N'Deuda Bancaria L.P. con vto. en el año', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (79, 1, 27, 1, 7, N'Deuda Leasing con vencimiento en el año', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (79, 2, 27, 1, 7, N'Deuda Leasing con vencimiento en el año', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (79, 3, 27, 1, 7, N'Deuda Leasing con vencimiento en el año', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (80, 1, 28, 1, 7, N'Obligaciones con el Público L.P. en C.P.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (80, 2, 28, 1, 7, N'Obligaciones con el Público L.P. en C.P.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (80, 3, 28, 1, 7, N'Obligaciones con el Público L.P. en C.P.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (81, 1, 29, 1, 7, N'Documentos por Pagar de Giro', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (81, 2, 29, 1, 7, N'Documentos por Pagar de Giro', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (81, 3, 29, 1, 7, N'Documentos por Pagar de Giro', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (82, 1, 30, 1, 7, N'Varios Acreedores', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (82, 2, 30, 1, 7, N'Varios Acreedores', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (82, 3, 30, 1, 7, N'Varios Acreedores', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (83, 1, 31, 1, 7, N'Cuentas por Pagar Empresas Relacionadas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (83, 2, 31, 1, 7, N'Cuentas por Pagar Empresas Relacionadas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (83, 3, 31, 1, 7, N'Cuentas por Pagar Empresas Relacionadas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (84, 1, 32, 1, 7, N'Cuenta Corriente Socios', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (84, 2, 32, 1, 7, N'Cuenta Corriente Socios', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (84, 3, 32, 1, 7, N'Cuenta Corriente Socios', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (85, 1, 33, 1, 7, N'Impuestos, Leyes Socs., Provs. y Retens.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (85, 2, 33, 1, 7, N'Impuestos, Leyes Socs., Provs. y Retens.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (85, 3, 33, 1, 7, N'Impuestos, Leyes Socs., Provs. y Retens.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (86, 1, 34, 1, 7, N'Ingresos Anticipados', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (86, 2, 34, 1, 7, N'Ingresos Anticipados', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (86, 3, 34, 1, 7, N'Ingresos Anticipados', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (87, 1, 35, 1, 7, N'Otros Pasivos Circulantes', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (87, 2, 35, 1, 7, N'Otros Pasivos Circulantes', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (87, 3, 35, 1, 7, N'Otros Pasivos Circulantes', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (88, 1, 36, 7, 7, N'TOTAL PASIVOS CIRCULANTES', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (88, 2, 36, 7, 7, N'TOTAL PASIVOS CIRCULANTES', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (88, 3, 36, 7, 7, N'TOTAL PASIVOS CIRCULANTES', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (89, 1, 37, 1, 7, N'Deuda Bancaria Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (89, 2, 37, 1, 7, N'Deuda Bancaria Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (89, 3, 37, 1, 7, N'Deuda Bancaria Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (90, 1, 38, 1, 7, N'Obligaciones por Leasing Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (90, 2, 38, 1, 7, N'Obligaciones por Leasing Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (90, 3, 38, 1, 7, N'Obligaciones por Leasing Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (91, 1, 39, 1, 7, N'Obligaciones con el Público Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (91, 2, 39, 1, 7, N'Obligaciones con el Público Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (91, 3, 39, 1, 7, N'Obligaciones con el Público Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (92, 1, 40, 1, 7, N'Proveedores Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (92, 2, 40, 1, 7, N'Proveedores Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (92, 3, 40, 1, 7, N'Proveedores Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (93, 1, 41, 1, 7, N'Provisiones Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (93, 2, 41, 1, 7, N'Provisiones Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (93, 3, 41, 1, 7, N'Provisiones Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (94, 1, 42, 1, 7, N'Cuentas por Pagar EE.RR. Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (94, 2, 42, 1, 7, N'Cuentas por Pagar EE.RR. Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (94, 3, 42, 1, 7, N'Cuentas por Pagar EE.RR. Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (95, 1, 43, 1, 7, N'Otros Pasivos Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (95, 2, 43, 1, 7, N'Otros Pasivos Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (95, 3, 43, 1, 7, N'Otros Pasivos Largo Plazo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (96, 1, 44, 7, 7, N'TOTAL PASIVO LARGO PLAZO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (96, 2, 44, 7, 7, N'TOTAL PASIVO LARGO PLAZO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (96, 3, 44, 7, 7, N'TOTAL PASIVO LARGO PLAZO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (97, 2, 45, 1, 7, N'Interes Minoritario', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (98, 1, 46, 7, 7, N'TOTAL PASIVO EXIGIBLE', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (98, 2, 46, 7, 7, N'TOTAL PASIVO EXIGIBLE', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (98, 3, 46, 7, 7, N'TOTAL PASIVO EXIGIBLE', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (99, 1, 47, 1, 7, N'Capital Pagado', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (99, 2, 47, 1, 7, N'Capital Pagado', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (99, 3, 47, 1, 7, N'Capital Pagado', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (100, 1, 48, 1, 7, N'Reservas de Revalorizaciones', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (100, 2, 48, 1, 7, N'Reservas de Revalorizaciones', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (100, 3, 48, 1, 7, N'Reservas de Revalorizaciones', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (101, 1, 49, 1, 7, N'Utilidades / (Pérdidas) Acumuladas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (101, 2, 49, 1, 7, N'Utilidades / (Pérdidas) Acumuladas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (101, 3, 49, 1, 7, N'Utilidades / (Pérdidas) Acumuladas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (102, 1, 50, 1, 7, N'Otras Reservas  (+/-)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (102, 2, 50, 1, 7, N'Otras Reservas  (+/-)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (102, 3, 50, 1, 7, N'Otras Reservas  (+/-)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (103, 1, 51, 1, 7, N'Retiros y/o Reparto de Dividendos (-)', N'0')
GO
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (103, 2, 51, 1, 7, N'Retiros y/o Reparto de Dividendos (-)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (103, 3, 51, 1, 7, N'Retiros y/o Reparto de Dividendos (-)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (104, 1, 52, 7, 7, N'Utilidad / (Pérdida) Neta del Ejercicio', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (104, 2, 52, 7, 7, N'Utilidad / (Pérdida) Neta del Ejercicio', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (104, 3, 52, 7, 7, N'Utilidad / (Pérdida) Neta del Ejercicio', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (105, 1, 53, 7, 7, N'PATRIMONIO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (105, 2, 53, 7, 7, N'PATRIMONIO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (105, 3, 53, 7, 7, N'PATRIMONIO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (106, 1, 54, 7, 7, N'TOTAL PASIVO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (106, 2, 54, 7, 7, N'TOTAL PASIVO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (106, 3, 54, 7, 7, N'TOTAL PASIVO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (108, 1, 55, 1, 8, N'Ingresos de la Explotación', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (108, 2, 55, 1, 8, N'Ingresos de la Explotación', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (108, 3, 55, 1, 8, N'Ingresos de la Explotación', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (109, 1, 56, 1, 8, N'Egresos de la Explotación', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (109, 2, 56, 1, 8, N'Egresos de la Explotación', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (109, 3, 56, 1, 8, N'Egresos de la Explotación', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (110, 1, 57, 7, 8, N'RESULTADO BRUTO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (110, 2, 57, 7, 8, N'RESULTADO BRUTO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (110, 3, 57, 7, 8, N'RESULTADO BRUTO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (111, 1, 58, 1, 8, N'Gastos Administrativos y de Ventas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (111, 2, 58, 1, 8, N'Gastos Administrativos y de Ventas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (111, 3, 58, 1, 8, N'Gastos Administrativos y de Ventas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (112, 1, 59, 7, 8, N'RESULTADO OPERACIONAL   (EBITDA)', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (112, 2, 59, 7, 8, N'RESULTADO OPERACIONAL   (EBITDA)', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (112, 3, 59, 7, 8, N'RESULTADO OPERACIONAL   (EBITDA)', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (113, 1, 60, 1, 8, N'Depreciación del Ejercicio', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (113, 2, 60, 1, 8, N'Depreciación del Ejercicio', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (113, 3, 60, 1, 8, N'Depreciación del Ejercicio', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (114, 1, 61, 1, 8, N'Ingresos Financieros', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (114, 2, 61, 1, 8, N'Ingresos Financieros', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (114, 3, 61, 1, 8, N'Ingresos Financieros', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (115, 1, 62, 1, 8, N'Ingresos fuera de la Explotación', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (115, 2, 62, 1, 8, N'Ingresos fuera de la Explotación', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (115, 3, 62, 1, 8, N'Ingresos fuera de la Explotación', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (116, 1, 63, 1, 8, N'Utilidad (Pérdida) en Ventas de A.F. Físico', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (116, 2, 63, 1, 8, N'Utilidad (Pérdida) en Ventas de A.F. Físico', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (116, 3, 63, 1, 8, N'Utilidad (Pérdida) en Ventas de A.F. Físico', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (117, 1, 64, 1, 8, N'Utilidad (Pérdida) en Inversión en EE.RR.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (117, 2, 64, 1, 8, N'Utilidad (Pérdida) en Inversión en EE.RR.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (117, 3, 64, 1, 8, N'Utilidad (Pérdida) en Inversión en EE.RR.', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (118, 1, 65, 1, 8, N'Egresos fuera de la Explotación', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (118, 2, 65, 1, 8, N'Egresos fuera de la Explotación', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (118, 3, 65, 1, 8, N'Egresos fuera de la Explotación', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (119, 1, 66, 1, 8, N'Gastos Financieros', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (119, 2, 66, 1, 8, N'Gastos Financieros', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (119, 3, 66, 1, 8, N'Gastos Financieros', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (120, 1, 67, 1, 8, N'Diferencia de Cambio  (+/-)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (120, 2, 67, 1, 8, N'Diferencia de Cambio  (+/-)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (120, 3, 67, 1, 8, N'Diferencia de Cambio  (+/-)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (121, 1, 68, 1, 8, N'Castigos, Multas, Provisión Incobrables', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (121, 2, 68, 1, 8, N'Castigos, Multas, Provisión Incobrables', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (121, 3, 68, 1, 8, N'Castigos, Multas, Provisión Incobrables', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (122, 1, 69, 1, 8, N'Amort. Mayor / (Menor) Valor de Inversiones', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (122, 2, 69, 1, 8, N'Amort. Mayor / (Menor) Valor de Inversiones', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (122, 3, 69, 1, 8, N'Amort. Mayor / (Menor) Valor de Inversiones', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (123, 1, 70, 7, 8, N'RES. ANTES CORREC. MONETARIA', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (123, 2, 70, 7, 8, N'RES. ANTES CORREC. MONETARIA', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (123, 3, 70, 7, 8, N'RES. ANTES CORREC. MONETARIA', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (124, 1, 71, 1, 8, N'Corrección Monetaria  (+/-)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (124, 2, 71, 1, 8, N'Corrección Monetaria  (+/-)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (124, 3, 71, 1, 8, N'Corrección Monetaria  (+/-)', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (125, 1, 72, 7, 8, N'UTILIDAD DEL EJERCICIO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (125, 2, 72, 7, 8, N'UTILIDAD DEL EJERCICIO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (125, 3, 72, 7, 8, N'UTILIDAD DEL EJERCICIO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (126, 1, 73, 1, 8, N'Provisión Impuesto Renta', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (126, 2, 73, 1, 8, N'Provisión Impuesto Renta', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (126, 3, 73, 1, 8, N'Provisión Impuesto Renta', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (127, 2, 74, 1, 8, N'Interes Minoritario', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (128, 1, 75, 7, 8, N'UTILIDAD / (PERDIDA) NETA DEL EJERCICIO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (128, 2, 75, 7, 8, N'UTILIDAD / (PERDIDA) NETA DEL EJERCICIO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (128, 3, 75, 7, 8, N'UTILIDAD / (PERDIDA) NETA DEL EJERCICIO', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (129, 1, 76, 7, 9, N'Saldo Inicial Patrimonio', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (129, 2, 76, 7, 9, N'Saldo Inicial Patrimonio', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (129, 3, 76, 7, 9, N'Saldo Inicial Patrimonio', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (130, 1, 77, 7, 9, N'(+) Utilidad Neta', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (130, 2, 77, 7, 9, N'(+) Utilidad Neta', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (130, 3, 77, 7, 9, N'(+) Utilidad Neta', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (131, 1, 78, 1, 9, N'(+) Corrección Monetaria Patrimonio', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (131, 2, 78, 1, 9, N'(+) Corrección Monetaria Patrimonio', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (131, 3, 78, 1, 9, N'(+) Corrección Monetaria Patrimonio', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (132, 1, 79, 1, 9, N'(+) Otros Aumentos Patrimoniales', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (132, 2, 79, 1, 9, N'(+) Otros Aumentos Patrimoniales', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (132, 3, 79, 1, 9, N'(+) Otros Aumentos Patrimoniales', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (133, 1, 80, 1, 9, N'(-) Dividendos o Retiros Pagados', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (133, 2, 80, 1, 9, N'(-) Dividendos o Retiros Pagados', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (133, 3, 80, 1, 9, N'(-) Dividendos o Retiros Pagados', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (134, 1, 81, 7, 9, N'Saldo Final Patrimonio Conciliado', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (134, 2, 81, 7, 9, N'Saldo Final Patrimonio Conciliado', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (134, 3, 81, 7, 9, N'Saldo Final Patrimonio Conciliado', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (135, 1, 82, 7, 9, N'Aumentos (Disms.) Patrim. Netas', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (135, 2, 82, 7, 9, N'Aumentos (Disms.) Patrim. Netas', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (135, 3, 82, 7, 9, N'Aumentos (Disms.) Patrim. Netas', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (136, 1, 83, 7, 10, N'Saldo Inicial Activo Fijo Físico', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (136, 2, 83, 7, 10, N'Saldo Inicial Activo Fijo Físico', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (136, 3, 83, 7, 10, N'Saldo Inicial Activo Fijo Físico', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (137, 1, 84, 1, 10, N'(+) Corrección Monetaria Activo Fijo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (137, 2, 84, 1, 10, N'(+) Corrección Monetaria Activo Fijo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (137, 3, 84, 1, 10, N'(+) Corrección Monetaria Activo Fijo', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (139, 1, 85, 1, 10, N'(-) Ventas de Activo Fijo Físico', N'0')
GO
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (139, 2, 85, 1, 10, N'(-) Ventas de Activo Fijo Físico', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (139, 3, 85, 1, 10, N'(-) Ventas de Activo Fijo Físico', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (140, 1, 86, 7, 10, N'(-) Depreciación del Ejercicio', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (140, 2, 86, 7, 10, N'(-) Depreciación del Ejercicio', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (140, 3, 86, 7, 10, N'(-) Depreciación del Ejercicio', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (141, 1, 87, 7, 10, N'Saldo Final Activo Fijo Físico Conciliado', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (141, 2, 87, 7, 10, N'Saldo Final Activo Fijo Físico Conciliado', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (141, 3, 87, 7, 10, N'Saldo Final Activo Fijo Físico Conciliado', N'0')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (142, 1, 88, 7, 10, N'Inversiones en Activo Fijo Físico', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (142, 2, 88, 7, 10, N'Inversiones en Activo Fijo Físico', N'N')
INSERT [dbo].[Conceptos] ([IdConcepto], [IdTipoBalance], [IdInterno], [IdTipoConcepto], [IdGrupo], [Concepto], [ConceptoFormato]) VALUES (142, 3, 88, 7, 10, N'Inversiones en Activo Fijo Físico', N'0')
INSERT [dbo].[ConceptosGrupos] ([IdGrupo], [IdTipoBalance], [IdTipoGrupo], [NombreSubGrupo]) VALUES (1, 1, 1, N'Actividad, Eficiencia, Rentabilidad :')
INSERT [dbo].[ConceptosGrupos] ([IdGrupo], [IdTipoBalance], [IdTipoGrupo], [NombreSubGrupo]) VALUES (2, 1, 1, N'Rentabilidad :')
INSERT [dbo].[ConceptosGrupos] ([IdGrupo], [IdTipoBalance], [IdTipoGrupo], [NombreSubGrupo]) VALUES (3, 1, 1, N'Liquidez :')
INSERT [dbo].[ConceptosGrupos] ([IdGrupo], [IdTipoBalance], [IdTipoGrupo], [NombreSubGrupo]) VALUES (4, 1, 1, N'Endeudamiento y Flujo de Caja:')
INSERT [dbo].[ConceptosGrupos] ([IdGrupo], [IdTipoBalance], [IdTipoGrupo], [NombreSubGrupo]) VALUES (5, 1, 2, NULL)
INSERT [dbo].[ConceptosGrupos] ([IdGrupo], [IdTipoBalance], [IdTipoGrupo], [NombreSubGrupo]) VALUES (6, 1, 7, NULL)
INSERT [dbo].[ConceptosGrupos] ([IdGrupo], [IdTipoBalance], [IdTipoGrupo], [NombreSubGrupo]) VALUES (7, 1, 3, NULL)
INSERT [dbo].[ConceptosGrupos] ([IdGrupo], [IdTipoBalance], [IdTipoGrupo], [NombreSubGrupo]) VALUES (8, 1, 4, NULL)
INSERT [dbo].[ConceptosGrupos] ([IdGrupo], [IdTipoBalance], [IdTipoGrupo], [NombreSubGrupo]) VALUES (9, 1, 5, NULL)
INSERT [dbo].[ConceptosGrupos] ([IdGrupo], [IdTipoBalance], [IdTipoGrupo], [NombreSubGrupo]) VALUES (10, 1, 6, NULL)
INSERT [dbo].[ConceptosGrupos] ([IdGrupo], [IdTipoBalance], [IdTipoGrupo], [NombreSubGrupo]) VALUES (11, 1, 7, NULL)
INSERT [dbo].[Estados] ([IdEstado], [Estado]) VALUES (1, N'En Proceso')
INSERT [dbo].[Estados] ([IdEstado], [Estado]) VALUES (2, N'Terminado')
INSERT [dbo].[Estados] ([IdEstado], [Estado]) VALUES (3, N'Anulado')
INSERT [dbo].[LogCategorias] ([IdCategoria], [Categoria]) VALUES (1, N'Insertar cliente')
INSERT [dbo].[LogCategorias] ([IdCategoria], [Categoria]) VALUES (2, N'Actualizar cliente')
INSERT [dbo].[LogCategorias] ([IdCategoria], [Categoria]) VALUES (3, N'Insertar balance')
INSERT [dbo].[LogCategorias] ([IdCategoria], [Categoria]) VALUES (4, N'Actualizar balance')
INSERT [dbo].[LogCategorias] ([IdCategoria], [Categoria]) VALUES (5, N'Insertar período')
INSERT [dbo].[LogCategorias] ([IdCategoria], [Categoria]) VALUES (6, N'Actualizar período')
INSERT [dbo].[LogCategorias] ([IdCategoria], [Categoria]) VALUES (7, N'Actualizar detalle período')
INSERT [dbo].[LogCategorias] ([IdCategoria], [Categoria]) VALUES (8, N'Consultar períodos')
INSERT [dbo].[LogCategorias] ([IdCategoria], [Categoria]) VALUES (15, N'Consultar período a traves del reporte')
SET IDENTITY_INSERT [dbo].[Monedas] ON 

INSERT [dbo].[Monedas] ([IdMoneda], [Moneda], [Simbolo]) VALUES (1, N'Peso Chileno', N'Ch$ ')
INSERT [dbo].[Monedas] ([IdMoneda], [Moneda], [Simbolo]) VALUES (2, N'Dolar USA', N'Us$ ')
SET IDENTITY_INSERT [dbo].[Monedas] OFF
SET IDENTITY_INSERT [dbo].[sysdiagrams] ON 

INSERT [dbo].[sysdiagrams] ([name], [principal_id], [diagram_id], [version], [definition]) VALUES (N'FullDiagram', 1, 1, 1, 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900060000000000000000000000010000000100000000000000001000000200000001000000FEFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFF21000000FEFFFFFF040000000500000006000000070000000800000009000000350000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F00000020000000FEFFFFFFFEFFFFFF230000002400000025000000260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F0000003000000031000000320000003300000034000000FEFFFFFF3600000037000000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500FFFFFFFFFFFFFFFF020000000000000000000000000000000000000000000000000000000000000030497688A419D2010300000040130000000000006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000201FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000320D0000000000006F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040002010100000004000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000A000000F42D000000000000010043006F006D0070004F0062006A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000350000005F000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F000000200000002100000022000000230000002400000025000000260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F0000003000000031000000320000003300000034000000FEFFFFFF36000000FEFFFFFFFEFFFFFF390000003A0000003B0000003C0000003D0000003E0000003F000000400000004100000042000000430000004400000045000000460000004700000048000000490000004A0000004B000000FEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000430000A1E100C050000802C0000000F00FFFF2C000000007D000026640000D44A00001A9D0000CBF30000040B0000D91B0000DE805B10F195D011B0A000AA00BDCB5C0000080030000000000200000300000038002B00000009000000D9E6B0E91C81D011AD5100A0C90F5739F43B7F847F61C74385352986E1D552F8A0327DB2D86295428D98273C25A2DA2D00002C0043200000000000000000000053444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C00002C0043200000000000000000000051444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C260000003C0C000000A6010000003800A50900000700008001000000A4020000008000000F00008053636847726964000C3000008A1B0000416E616C6973746173202864626F290000003C00A50900000700008002000000AE02000000800000140000805363684772696400B04F0000BC34000042616C616E6365446574616C6C65202864626F2900003C00A50900000700008003000000AE020000008000001400008053636847726964000C3000003831000042616C616E6365506572696F646F202864626F2900009000A50900000700008006000000520000000180000065000080436F6E74726F6C0097390000EB24000052656C6174696F6E736869702027464B5F42616C616E6365506572696F646F5F416E616C6973746173202864626F2927206265747765656E2027416E616C6973746173202864626F292720616E64202742616C616E6365506572696F646F202864626F2927FFFFFF00002800B50100000700008007000000310000006900000002800000436F6E74726F6C00BA2A0000C12B000000003800A50900000700008008000000A2020000008000000E0000805363684772696400A41F00003264000042616C616E636573202864626F29000000003800A5090000070000800B000000A2020000008000000E0000805363684772696400DE3F0000825F0000436C69656E746573202864626F29000000003800A5090000070000800E000000A4020000008000000F0000805363684772696400A41F000010A40000436F6E636570746F73202864626F290000004000A5090000070000800F000000B002000000800000150000805363684772696400DE3F0000349E0000436F6E636570746F73477275706F73202864626F290A000000009000A50900000700008010000000620000000180000067000080436F6E74726F6C0000350000A5A3000052656C6174696F6E736869702027464B5F436F6E636570746F735F436F6E636570746F73477275706F73202864626F2927206265747765656E2027436F6E636570746F73477275706F73202864626F292720616E642027436F6E636570746F73202864626F29271900002800B50100000700008011000000310000006B00000002800000436F6E74726F6C00AB3E00009BAD000000003800A50900000700008012000000A0020000008000000D0000805363684772696400D20F0000B23E000045737461646F73202864626F2909000000008C00A50900000700008013000000520000000180000061000080436F6E74726F6C002E250000CB41000052656C6174696F6E736869702027464B5F42616C616E6365506572696F646F5F45737461646F73202864626F2927206265747765656E202745737461646F73202864626F292720616E64202742616C616E6365506572696F646F202864626F292700000000002800B50100000700008014000000310000006500000002800000436F6E74726F6C00652500001144000000003800A50900000700008015000000A0020000008000000D0000805363684772696400A41F0000868800004D6F6E65646173202864626F2900000000008000A50900000700008016000000520000000180000055000080436F6E74726F6C002F290000717C000052656C6174696F6E736869702027464B5F42616C616E6365735F4D6F6E65646173202864626F2927206265747765656E20274D6F6E65646173202864626F292720616E64202742616C616E636573202864626F2927850E0400002800B50100000700008017000000310000005900000002800000436F6E74726F6C00752B00002D83000000003C00A50900000700008018000000A80200000080000011000080536368477269640000000000FC6C00005469706F42616C616E6365202864626F2900000000008800A5090000070000801900000052000000018000005D000080436F6E74726F6C005C1500001570000052656C6174696F6E736869702027464B5F42616C616E6365735F5469706F42616C616E6365202864626F2927206265747765656E20275469706F42616C616E6365202864626F292720616E64202742616C616E636573202864626F292700000000002800B5010000070000801A000000310000006100000002800000436F6E74726F6C00291400005B72000000008800A5090000070000801B00000062000000018000005F000080436F6E74726F6C008B090000E273000052656C6174696F6E736869702027464B5F436F6E636570746F735F5469706F42616C616E6365202864626F2927206265747765656E20275469706F42616C616E6365202864626F292720616E642027436F6E636570746F73202864626F29270000002800B5010000070000801C000000310000006300000002800000436F6E74726F6C004D1400002A97000000003C00A5090000070000801D000000A802000000800000110000805363684772696400825F0000825F00005469706F43616C69646164202864626F2900000000009400A5090000070000801E000000620000000180000069000080436F6E74726F6C00493A00006353000052656C6174696F6E736869702027464B5F42616C616E6365506572696F646F5F5469706F43616C69646164202864626F2927206265747765656E20275469706F43616C69646164202864626F292720616E64202742616C616E6365506572696F646F202864626F292700000000002800B5010000070000801F000000310000006D00000002800000436F6E74726F6C007A510000325B000000003C00A50900000700008020000000AC02000000800000130000805363684772696400A41F00001EC300005469706F436F6E636570746F73202864626F296F00008C00A50900000700008021000000520000000180000063000080436F6E74726F6C002F29000059B7000052656C6174696F6E736869702027464B5F436F6E636570746F735F5469706F436F6E636570746F73202864626F2927206265747765656E20275469706F436F6E636570746F73202864626F292720616E642027436F6E636570746F73202864626F29271900002800B50100000700008022000000310000006700000002800000436F6E74726F6C00752B000024BD000000003800A50900000700008023000000A602000000800000100000805363684772696400DE3F00003AB600005469706F477275706F73202864626F2900009400A50900000700008024000000520000000180000069000080436F6E74726F6C00694900000CAA000052656C6174696F6E736869702027464B5F436F6E636570746F73477275706F735F5469706F477275706F73202864626F2927206265747765656E20275469706F477275706F73202864626F292720616E642027436F6E636570746F73477275706F73202864626F292700000000002800B50100000700008025000000310000006D00000002800000436F6E74726F6C00AF4B0000F7AF000000003800A50900000700008026000000A6020000008000001000008053636847726964000000000000000000456A6563757469766F73202864626F2900008000A50900000700008027000000520000000180000057000080436F6E74726F6C00003500003163000052656C6174696F6E736869702027464B5F42616C616E6365735F436C69656E746573202864626F2927206265747765656E2027436C69656E746573202864626F292720616E64202742616C616E636573202864626F29270000002800B50100000700008028000000310000005B00000002800000436F6E74726F6C002A350000C162000000008C00A50900000700008029000000520000000180000063000080436F6E74726F6C000B2F00006353000052656C6174696F6E736869702027464B5F42616C616E6365506572696F646F5F42616C616E636573202864626F2927206265747765656E202742616C616E636573202864626F292720616E64202742616C616E6365506572696F646F202864626F29275700002800B5010000070000802A000000310000006700000002800000436F6E74726F6C00513100007C5C000000009800A5090000070000802B00000052000000018000006F000080436F6E74726F6C0068450000BB33000052656C6174696F6E736869702027464B5F42616C616E6365446574616C6C655F42616C616E6365506572696F646F202864626F2927206265747765656E202742616C616E6365506572696F646F202864626F292720616E64202742616C616E6365446574616C6C65202864626F29270000002800B5010000070000802C000000310000007300000002800000436F6E74726F6C00BA4100000136000000000000000000000000000000000100FEFF030A0000FFFFFFFF00000000000000000000000000000000170000004D6963726F736F66742044445320466F726D20322E300010000000456D626564646564204F626A6563740000000000F439B271000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000C0000000B0000004E61BC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000214334120800000088160000180C000078563412070000001401000041006E0061006C006900730074006100730020002800640062006F00290000006000000044000000020000006600000047000000020000007900000055000000020000009000000063000000020000009A0000006900000002000000FD000000FFFFFFFF0200000002010000FFFFFFFF0200000008010000FFFFFFFF0200000038010000A4000000020000003D010000A80000000200000054010000B6000000020000005E010000BC00000002000000A2010000D700000002000000E8010000FFFFFFFF02000000ED010000FFFFFFFF02000000F3010000FFFFFFFF020000001102000003010000020000001602000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000002229000065150000000000002D010000070000000C000000070000001C0100000609000062070000480300001A040000DF020000EC04000027060000B103000027060000CB07000055050000000000000100000088160000180C000000000000030000000300000002000000020000001C010000F50A00000000000001000000391300007A05000000000000010000000100000002000000020000001C010000060900000100000000000000391300003403000000000000000000000000000002000000020000001C010000060900000000000000000000D13100000923000000000000000000000D00000004000000040000001C01000006090000AA0A00009006000078563412040000005C00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000A00000041006E0061006C00690073007400610073000000214334120800000088160000751D0000785634120700000014010000420061006C0061006E006300650044006500740061006C006C00650020002800640062006F0029000000B5713862B571004E3702004E3702804C3702804C37028C4C37028C4C3702984C3702984C3702A44C3702A44C3702B04C3702B04C3702BC4C3702BC4C3702C84C3702C84C3702D44C3702D44C3702E04C3702E04C3702EC4C3702EC4C3702F84C3702F84C3702044D3702044D3702104D3702104D37021C4D37021C4D3702284D3702284D3702344D3702344D3702404D3702404D37024C4D37024C4D3702584D3702584D3702644D3702644D3702704D3702704D37027C4D37027C4D3702884D3702884D000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000022290000C3200000000000002D0100000C0000000C000000070000001C0100000609000062070000480300001A040000DF020000EC04000027060000B103000027060000CB07000055050000000000000100000088160000751D0000000000000A0000000A00000002000000020000001C010000F50A0000000000000100000039130000C007000000000000020000000200000002000000020000001C010000060900000100000000000000391300003403000000000000000000000000000002000000020000001C010000060900000000000000000000D13100000923000000000000000000000D00000004000000040000001C01000006090000AA0A00009006000078563412040000006600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000F000000420061006C0061006E006300650044006500740061006C006C0065000000214334120800000088160000E6240000785634120700000014010000420061006C0061006E006300650050006500720069006F0064006F0020002800640062006F002900000000000400000085020000000000000D00000000000000000000000100000004000000850200003F0000004700000003000000000000000000000004000000850200000D000000720000000200000003000000050000000800000085020000DF00000015010000050000000300000005000000F0FFFFFF850200000D00000045010000010000000000000003000000F0FFFFFF850200000D000000CA010000000000000000000007000000F0FFFFFF85020000A2010000FC01000006000000000000000300000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000002229000009230000000000002D0100000D0000000C000000070000001C0100000609000062070000480300001A040000DF020000EC04000027060000B103000027060000CB07000055050000000000000100000088160000E6240000000000000D0000000C00000002000000020000001C010000F50A0000000000000100000039130000930E000000000000050000000500000002000000020000001C010000060900000100000000000000391300003403000000000000000000000000000002000000020000001C010000060900000000000000000000D13100000923000000000000000000000D00000004000000040000001C01000006090000AA0A00009006000078563412040000006600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000F000000420061006C0061006E006300650050006500720069006F0064006F00000002000B002E3B0000A22700002E3B0000383100000000000002000000F0F0F00000000000000000000000000000000000010000000700000000000000BA2A0000C12B0000C50F00005801000032000000010000020000C50F000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611B0046004B005F00420061006C0061006E006300650050006500720069006F0064006F005F0041006E0061006C0069007300740061007300214334120800000088160000FA1A0000785634120700000014010000420061006C0061006E0063006500730020002800640062006F002900000000000200000003000000040000000C000000A0000000000000000B00000003000000030000000400000008000000A0000000000000000B00000004000000030000000400000004000000A0000000000000000B00000000000000000000000100000004000000A00000000B0000003900000000000000000000000600000004000000A00000000B0000005600000001000000000000000700000004000000A00000000B0000006000000002000000030000000500000010000000A00000000B0000006F00000003000000030000000500000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000222900007D1E0000000000002D0100000B0000000C000000070000001C0100000609000062070000480300001A040000DF020000EC04000027060000B103000027060000CB07000055050000000000000100000088160000FA1A000000000000090000000900000002000000020000001C010000F50A00000000000001000000391300004D0C000000000000040000000400000002000000020000001C010000060900000100000000000000391300003403000000000000000000000000000002000000020000001C010000060900000000000000000000D13100000923000000000000000000000D00000004000000040000001C01000006090000AA0A00009006000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000009000000420061006C0061006E006300650073000000214334120800000088160000E624000078563412070000001401000043006C00690065006E0074006500730020002800640062006F002900000061006D0065002C002000760061006C00750065002000460052004F004D0020007300790073002E0065007800740065006E006400650064005F00700072006F0070006500720074006900650073002000570048004500520045002000280063006C0061007300730020003D00200031002900200041004E004400200028006D0069006E006F0072005F006900640020003D00200030002900200041004E004400200028006D0061006A006F0072005F006900640020003D0020004F0042004A004500430054005F004900440028004E00000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000002229000009230000000000002D0100000D0000000C000000070000001C0100000609000062070000480300001A040000DF020000EC04000027060000B103000027060000CB07000055050000000000000100000088160000E6240000000000000D0000000C00000002000000020000001C010000F50A0000000000000100000039130000C007000000000000020000000200000002000000020000001C010000060900000100000000000000391300003403000000000000000000000000000002000000020000001C010000060900000000000000000000D13100000923000000000000000000000D00000004000000040000001C01000006090000AA0A00009006000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000900000043006C00690065006E0074006500730000002143341208000000881600000416000078563412070000001401000043006F006E0063006500700074006F00730020002800640062006F00290000000000803F0000003F0000803FF3F2723F9E9D1D3F0000803F0000803F0000803FF3F2723F9E9D1D3F0000803F0000000001000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F03F0000000000000000983B20620000000000000000A03C2062D858206228CBF40C28CBF40C0200000002000000000000000000000000000000000000000200000000000000000000000000000000803A4400803AC40000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000022290000F1190000000000002D010000090000000C000000070000001C0100000609000062070000480300001A040000DF020000EC04000027060000B103000027060000CB070000550500000000000001000000881600000416000000000000070000000700000002000000020000001C010000F50A00000000000001000000391300004D0C000000000000040000000400000002000000020000001C010000060900000100000000000000391300003403000000000000000000000000000002000000020000001C010000060900000000000000000000D13100000923000000000000000000000D00000004000000040000001C01000006090000AA0A00009006000078563412040000005C00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000A00000043006F006E0063006500700074006F0073000000214334120800000088160000930E000078563412070000001401000043006F006E0063006500700074006F00730047007200750070006F00730020002800640062006F0029000000D7D6563FE6E5653F0000803F00003C40000000000000F03F00000000000000000000000001000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F03F0000000000000000983B20620000000000000000A03C2062D858206220D4F40C20D4F40C020000000200000000000000000000000000000000000000020000000000000000000000000000000000E0410000E0C10000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000002229000065150000000000002D010000070000000C000000070000001C0100000609000062070000480300001A040000DF020000EC04000027060000B103000027060000CB07000055050000000000000100000088160000930E000000000000040000000400000002000000020000001C010000F50A0000000000000100000039130000C007000000000000020000000200000002000000020000001C010000060900000100000000000000391300003403000000000000000000000000000002000000020000001C010000060900000000000000000000D13100000923000000000000000000000D00000004000000040000001C01000006090000AA0A00009006000078563412040000006800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000001000000043006F006E0063006500700074006F00730047007200750070006F007300000004000B00DE3F00003CA50000FC3D00003CA50000FC3D000032AF00002C36000032AF00000000000002000000F0F0F00000000000000000000000000000000000010000001100000000000000AB3E00009BAD00000512000058010000310000000100000200000512000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611C0046004B005F0043006F006E0063006500700074006F0073005F0043006F006E0063006500700074006F00730047007200750070006F0073002143341208000000881600009D090000785634120700000014010000450073007400610064006F00730020002800640062006F002900000061006D002000460069006C00650073002000280078003800360029002F004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072002F003100330030002F0054006F006F006C0073002F00420069006E006E002F004D0061006E006100670065006D0065006E007400530074007500640069006F002F004900440045002F0053007400610072007400500061006700650041007300730065006D0062006C006900650073002F004D006900630072006F0073006F00660074002E00530071006C00000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000002229000065150000000000002D010000070000000C000000070000001C0100000609000062070000480300001A040000DF020000EC04000027060000B103000027060000CB070000550500000000000001000000881600009D09000000000000020000000200000002000000020000001C010000F50A00000000000001000000391300007A05000000000000010000000100000002000000020000001C010000060900000100000000000000391300003403000000000000000000000000000002000000020000001C010000060900000000000000000000D13100000923000000000000000000000D00000004000000040000001C01000006090000AA0A00009006000078563412040000005800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000008000000450073007400610064006F007300000002000B005A260000624300000C300000624300000000000002000000F0F0F000000000000000000000000000000000000100000014000000000000006525000011440000350F00005801000011000000010000020000350F000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61190046004B005F00420061006C0061006E006300650050006500720069006F0064006F005F00450073007400610064006F007300214334120800000088160000180C00007856341207000000140100004D006F006E00650064006100730020002800640062006F002900000061006D002000460069006C00650073002000280078003800360029002F004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072002F003100330030002F0054006F006F006C0073002F00420069006E006E002F004D0061006E006100670065006D0065006E007400530074007500640069006F002F0045007800740065006E00730069006F006E0073002F004100700070006C00690063006100740069006F006E002F004D006900630072006F0073006F00660074002E00530071006C005300000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000002229000065150000000000002D010000070000000C000000070000001C0100000609000062070000480300001A040000DF020000EC04000027060000B103000027060000CB07000055050000000000000100000088160000180C000000000000030000000300000002000000020000001C010000F50A00000000000001000000391300007A05000000000000010000000100000002000000020000001C010000060900000100000000000000391300003403000000000000000000000000000002000000020000001C010000060900000000000000000000D13100000923000000000000000000000D00000004000000040000001C01000006090000AA0A00009006000078563412040000005800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000080000004D006F006E006500640061007300000002000B00C62A000086880000C62A00002C7F00000000000002000000F0F0F00000000000000000000000000000000000010000001700000000000000752B00002D830000470C00005801000032000000010000020000470C000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61130046004B005F00420061006C0061006E006300650073005F004D006F006E0065006400610073002143341208000000881600009D0900007856341207000000140100005400690070006F00420061006C0061006E006300650020002800640062006F00290000000000803FD0CF4F3FD7D6563FE6E5653F0000803F00508740000000000000F03F00000000000000000000000001000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F03F0000000000000000983B20620000000000000000A03C2062D858206290D1F40C90D1F40C0200000002000000000000000000000000000000000000000200000000000000000000000000000000803A4400803AC40000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000002229000065150000000000002D010000070000000C000000070000001C0100000609000062070000480300001A040000DF020000EC04000027060000B103000027060000CB070000550500000000000001000000881600009D09000000000000020000000200000002000000020000001C010000F50A00000000000001000000391300007A05000000000000010000000100000002000000020000001C010000060900000100000000000000391300003403000000000000000000000000000002000000020000001C010000060900000000000000000000D13100000923000000000000000000000D00000004000000040000001C01000006090000AA0A00009006000078563412040000006000000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000C0000005400690070006F00420061006C0061006E0063006500000002000B0088160000AC710000A41F0000AC7100000000000002000000F0F0F00000000000000000000000000000000000010000001A00000000000000291400005B720000DA0D00005801000032000000010000020000DA0D000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61170046004B005F00420061006C0061006E006300650073005F005400690070006F00420061006C0061006E006300650004000B00220B000099760000220B00007B960000C62A00007B960000C62A000010A400000000000002000000F0F0F00000000000000000000000000000000000010000001C000000000000004D1400002A970000DF0E00005801000049000000010000020000DF0E000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61180046004B005F0043006F006E0063006500700074006F0073005F005400690070006F00420061006C0061006E00630065002143341208000000881600009D0900007856341207000000140100005400690070006F00430061006C00690064006100640020002800640062006F0029000000030000000000000000200000000000000000000000000000000000000000000090D54919405D5219000000000000000080774A1900000000000000000000000028D63C19000000000000000018764A190000000000000000000000000000000000000000182D181900000000000000000000000000000000000000000000000000000000509DEE180000000000000000000000000000000051A57D48931E8FA4DDFDD32BD7DF25C420000000D0D33C1914000000982C1819AE881C3A6DAB7EA3920AA3A44E4616297AC4000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000002229000065150000000000002D010000070000000C000000070000001C0100000609000062070000480300001A040000DF020000EC04000027060000B103000027060000CB070000550500000000000001000000881600009D09000000000000020000000200000002000000020000001C010000F50A00000000000001000000391300007A05000000000000010000000100000002000000020000001C010000060900000100000000000000391300003403000000000000000000000000000002000000020000001C010000060900000000000000000000D13100000923000000000000000000000D00000004000000040000001C01000006090000AA0A00009006000078563412040000006000000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000C0000005400690070006F00430061006C006900640061006400000004000B00A46A0000825F0000A46A0000395D0000C43B0000395D0000C43B00001E5600000000000002000000F0F0F00000000000000000000000000000000000010000001F000000000000007A510000325B00001F11000058010000320000000100000200001F11000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D611D0046004B005F00420061006C0061006E006300650050006500720069006F0064006F005F005400690070006F00430061006C0069006400610064002143341208000000881600009D0900007856341207000000140100005400690070006F0043006F006E0063006500700074006F00730020002800640062006F0029000000650073002000280078003800360029002F004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072002F003100330030002F0054006F006F006C0073002F00420069006E006E002F004D0061006E006100670065006D0065006E007400530074007500640069006F002F004900440045002F00500072006900760061007400650041007300730065006D0062006C006900650073002F004D006900630072006F0073006F00660074002E00530071006C0053006500000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000002229000065150000000000002D010000070000000C000000070000001C0100000609000062070000480300001A040000DF020000EC04000027060000B103000027060000CB070000550500000000000001000000881600009D09000000000000020000000200000002000000020000001C010000F50A00000000000001000000391300007A05000000000000010000000100000002000000020000001C010000060900000100000000000000391300003403000000000000000000000000000002000000020000001C010000060900000000000000000000D13100000923000000000000000000000D00000004000000040000001C01000006090000AA0A00009006000078563412040000006400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000E0000005400690070006F0043006F006E0063006500700074006F007300000002000B00C62A00001EC30000C62A000014BA00000000000002000000F0F0F00000000000000000000000000000000000010000002200000000000000752B000024BD000072100000580100003C0000000100000200007210000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D611A0046004B005F0043006F006E0063006500700074006F0073005F005400690070006F0043006F006E0063006500700074006F0073002143341208000000881600009D0900007856341207000000140100005400690070006F0047007200750070006F00730020002800640062006F0029000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000002229000065150000000000002D010000070000000C000000070000001C0100000609000062070000480300001A040000DF020000EC04000027060000B103000027060000CB070000550500000000000001000000881600009D09000000000000020000000200000002000000020000001C010000F50A00000000000001000000391300007A05000000000000010000000100000002000000020000001C010000060900000100000000000000391300003403000000000000000000000000000002000000020000001C010000060900000000000000000000D13100000923000000000000000000000D00000004000000040000001C01000006090000AA0A00009006000078563412040000005E00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000B0000005400690070006F0047007200750070006F007300000002000B00004B00003AB60000004B0000C7AC00000000000002000000F0F0F00000000000000000000000000000000000010000002500000000000000AF4B0000F7AF00005D120000580100003D0000000100000200005D12000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D611D0046004B005F0043006F006E0063006500700074006F00730047007200750070006F0073005F005400690070006F0047007200750070006F007300214334120800000088160000180C000078563412070000001401000045006A006500630075007400690076006F00730020002800640062006F0029000000460069006C00650073002000280078003800360029002F004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072002F003100330030002F0054006F006F006C0073002F00420069006E006E002F004D0061006E006100670065006D0065006E007400530074007500640069006F002F004900440045002F00500072006F006A0065006300740043006F006D0070006F006E0065006E00740073002F004D006900630072006F0073006F00660074002E00530071006C0053006500000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000002229000065150000000000002D010000070000000C000000070000001C0100000609000062070000480300001A040000DF020000EC04000027060000B103000027060000CB07000055050000000000000100000088160000180C000000000000030000000300000002000000020000001C010000F50A00000000000001000000391300007A05000000000000010000000100000002000000020000001C010000060900000100000000000000391300003403000000000000000000000000000002000000020000001C010000060900000000000000000000D13100000923000000000000000000000D00000004000000040000001C01000006090000AA0A00009006000078563412040000005E00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000B00000045006A006500630075007400690076006F007300000002000B00DE3F0000C86400002C360000C86400000000000002000000F0F0F000000000000000000000000000000000000100000028000000000000002A350000C1620000B70B00005801000032000000010000020000B70B000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61140046004B005F00420061006C0061006E006300650073005F0043006C00690065006E0074006500730002000B00A230000032640000A23000001E5600000000000002000000F0F0F00000000000000000000000000000000000010000002A00000000000000513100007C5C0000A90F00005801000032000000010000020000A90F000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D611A0046004B005F00420061006C0061006E006300650050006500720069006F0064006F005F00420061006C0061006E0063006500730002000B009446000052350000B04F0000523500000000000002000000F0F0F00000000000000000000000000000000000010000002C00000000000000BA41000001360000D01200005801000032000000010000020000D012000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61200046004B005F00420061006C0061006E006300650044006500740061006C006C0065005F00420061006C0061006E006300650050006500720069006F0064006F000000000000000000000000000300440064007300530074007200650061006D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000160002000300000006000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000022000000BE2400000000000053006300680065006D00610020005500440056002000440065006600610075006C0074000000000000000000000000000000000000000000000000000000000026000200FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000370000001600000000000000440053005200450046002D0053004300480045004D0041002D0043004F004E00540045004E0054005300000000000000000000000000000000000000000000002C0002010500000007000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000038000000FE0400000000000053006300680065006D00610020005500440056002000440065006600610075006C007400200050006F007300740020005600360000000000000000000000000036000200FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000004C00000012000000000000000C000000040B0000D91B00000100260000007300630068005F006C006100620065006C0073005F00760069007300690062006C0065000000010000000B0000001E000000000000000000000000000000000000006400000000000000000000000000000000000000000000000000010000000100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003300310030002C0031002C0031003800390030002C0035002C0031003200360030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003800300035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003300310030002C00310032002C0032003700330030002C00310031002C0031003600380030000000020000000200000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003300310030002C0031002C0031003800390030002C0035002C0031003200360030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003800300035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003300310030002C00310032002C0032003700330030002C00310031002C0031003600380030000000030000000300000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003300310030002C0031002C0031003800390030002C0035002C0031003200360030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003800300035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003300310030002C00310032002C0032003700330030002C00310031002C0031003600380030000000060000000600000000000000480000000100270001000000640062006F00000046004B005F00420061006C0061006E006300650050006500720069006F0064006F005F0041006E0061006C006900730074006100730000000000000000000000C402000000000700000007000000060000000800000001372C1918372C190000000000000000AD0F0000010000080000000800000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003300310030002C0031002C0031003800390030002C0035002C0031003200360030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003800300035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003300310030002C00310032002C0032003700330030002C00310031002C00310036003800300000000B0000000B00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003300310030002C0031002C0031003800390030002C0035002C0031003200360030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003800300035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003300310030002C00310032002C0032003700330030002C00310031002C00310036003800300000000E0000000E00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003300310030002C0031002C0031003800390030002C0035002C0031003200360030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003800300035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003300310030002C00310032002C0032003700330030002C00310031002C00310036003800300000000F0000000F00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003300310030002C0031002C0031003800390030002C0035002C0031003200360030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003800300035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003300310030002C00310032002C0032003700330030002C00310031002C00310036003800300000001000000010000000000000004A0000000100350001000000640062006F00000046004B005F0043006F006E0063006500700074006F0073005F0043006F006E0063006500700074006F00730047007200750070006F00730000000000000000000000C402000000001100000011000000100000000800000001C44E19F0C44E190000000000000000AD0F0000010000120000001200000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003300310030002C0031002C0031003800390030002C0035002C0031003200360030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003800300035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003300310030002C00310032002C0032003700330030002C00310031002C0031003600380030000000130000001300000000000000440000000100270001000000640062006F00000046004B005F00420061006C0061006E006300650050006500720069006F0064006F005F00450073007400610064006F00730000000000000000000000C402000000001400000014000000130000000800000001CD4E19B0CD4E190000000000000000AD0F0000010000150000001500000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003300310030002C0031002C0031003800390030002C0035002C0031003200360030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003800300035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003300310030002C00310032002C0032003700330030002C00310031002C0031003600380030000000160000001600000000000000380000000100000001000000640062006F00000046004B005F00420061006C0061006E006300650073005F004D006F006E00650064006100730000000000000000000000C402000000001700000017000000160000000800000001991419609914190000000000000000AD0F0000010000180000001800000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003300310030002C0031002C0031003800390030002C0035002C0031003200360030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003800300035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003300310030002C00310032002C0032003700330030002C00310031002C003100360038003000000019000000190000000000000040000000011F932501000000640062006F00000046004B005F00420061006C0061006E006300650073005F005400690070006F00420061006C0061006E006300650000000000000000000000C402000000001A0000001A000000190000000800000001C94E19B0C94E190000000000000000AD0F00000100001B0000001B00000000000000420000000100270001000000640062006F00000046004B005F0043006F006E0063006500700074006F0073005F005400690070006F00420061006C0061006E006300650000000000000000000000C402000000001C0000001C0000001B0000000800000001CA4E1970CA4E190000000000000000AD0F00000100001D0000001D00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003300310030002C0031002C0031003800390030002C0035002C0031003200360030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003800300035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003300310030002C00310032002C0032003700330030002C00310031002C00310036003800300000001E0000001E000000000000004C000000011F932501000000640062006F00000046004B005F00420061006C0061006E006300650050006500720069006F0064006F005F005400690070006F00430061006C00690064006100640000000000000000000000C402000000001F0000001F0000001E0000000800000001961419209614190000000000000000AD0F0000010000200000002000000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003300310030002C0031002C0031003800390030002C0035002C0031003200360030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003800300035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003300310030002C00310032002C0032003700330030002C00310031002C0031003600380030000000210000002100000000000000460000000100270001000000640062006F00000046004B005F0043006F006E0063006500700074006F0073005F005400690070006F0043006F006E0063006500700074006F00730000000000000000000000C402000000002200000022000000210000000800000001B24E19B0B24E190000000000000000AD0F0000010000230000002300000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003300310030002C0031002C0031003800390030002C0035002C0031003200360030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003800300035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003300310030002C00310032002C0032003700330030002C00310031002C00310036003800300000002400000024000000000000004C000000011F932501000000640062006F00000046004B005F0043006F006E0063006500700074006F00730047007200750070006F0073005F005400690070006F0047007200750070006F00730000000000000000000000C402000000002500000025000000240000000800000001961419A09614190000000000000000AD0F0000010000260000002600000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003300310030002C0031002C0031003800390030002C0035002C0031003200360030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003800300035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300310030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003300310030002C00310032002C0032003700330030002C00310031002C00310036003800300000002700000027000000000000003A0000000100000C01000000640062006F00000046004B005F00420061006C0061006E006300650073005F0043006C00690065006E0074006500730000000000000000000000C402000000002800000028000000270000000800000001175219D81752190000000000000000AD0F0000010000290000002900000000000000460000000100270001000000640062006F00000046004B005F00420061006C0061006E006300650050006500720069006F0064006F005F00420061006C0061006E0063006500730000000000000000000000C402000000002A0000002A000000290000000800000001175219581752190000000000000000AD0F00000100002B0000002B00000000000000520000000100000001000000640062006F00000046004B005F00420061006C0061006E006300650044006500740061006C006C0065005F00420061006C0061006E006300650050006500720069006F0064006F0000000000000000000000C402000000002C0000002C0000002B00000008000000013DF418283DF4180000000000000000AD0F00000100003C00000006000000010000000300000025000000240000002B0000000300000002000000570000004A0000002900000008000000030000003800000001000000270000000B000000080000005A0000004B000000100000000F0000000E000000600000006F000000130000001200000003000000590000008600000016000000150000000800000024000000250000001B000000180000000E000000250000002400000019000000180000000800000059000000760000001E0000001D00000003000000240000002700000021000000200000000E000000240000002500000024000000230000000F000000240000002500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000DBE6B0E91C81D011AD5100A0C90F57390000020090483588A419D201020200001048450000000000000000000000000000000000E60100004400610074006100200053006F0075007200630065003D0072006C007900650068002E00640061007400610062006100730065002E00770069006E0064006F00770073002E006E00650074002C0031003400330033003B0049006E0069007400690061006C00200043006100740061006C006F0067003D0056004F0042003B005000650072007300690073007400200053006500630075007200690074007900200049006E0066006F003D0054007200750065003B0055007300650072002000490044003D0072006C0079006500680064006F006F006D003B004D0075006C007400690070006C00650041006300740069007600650052006500730075006C00740053006500740073003D00460061006C00730065003B0054007200750073007400530065007200760065007200430065007200740069006600690063006100740065003D0054007200750065003B005000610063006B00650074002000530069007A0065003D0034003000390036003B004100700070006C00690063006100740069006F006E0020004E0061006D0065003D0022004D006900630072006F0073006F00660074002000530051004C00200053006500720076006500720020004D0061006E006100670065006D0065006E0074002000530074007500640069006F00220000000080050018000000460075006C006C004400690061006700720061006D000000000226001400000041006E0061006C0069007300740061007300000008000000640062006F000000000226001E000000420061006C0061006E006300650044006500740061006C006C006500000008000000640062006F000000000226001E000000420061006C0061006E006300650050006500720069006F0064006F00000008000000640062006F0000000002260012000000420061006C0061006E00630065007300000008000000640062006F000000000226001200000043006C00690065006E00740065007300000008000000640062006F000000000226001400000043006F006E0063006500700074006F007300000008000000640062006F000000000226002000000043006F006E0063006500700074006F00730047007200750070006F007300000008000000640062006F0000000002260010000000450073007400610064006F007300000008000000640062006F00000000022600100000004D006F006E006500640061007300000008000000640062006F00000000022600180000005400690070006F00420061006C0061006E0063006500000008000000640062006F00000000022600180000005400690070006F00430061006C006900640061006400000008000000640062006F000000000226001C0000005400690070006F0043006F006E0063006500700074006F007300000008000000640062006F00000000022600160000005400690070006F0047007200750070006F007300000008000000640062006F000000000224001600000045006A006500630075007400690076006F007300000008000000640062006F00000001000000D68509B3BB6BF2459AB8371664F0327008004E0000007B00310036003300340043004400440037002D0030003800380038002D0034003200450033002D0039004600410032002D004200360044003300320035003600330042003900310044007D0000000000010003000000000000000C0000000B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062885214)
SET IDENTITY_INSERT [dbo].[sysdiagrams] OFF
INSERT [dbo].[TipoBalance] ([IdTipoBalance], [TipoBalance]) VALUES (1, N'Individual')
INSERT [dbo].[TipoBalance] ([IdTipoBalance], [TipoBalance]) VALUES (2, N'Consolidado')
INSERT [dbo].[TipoBalance] ([IdTipoBalance], [TipoBalance]) VALUES (3, N'Combinado')
SET IDENTITY_INSERT [dbo].[TipoCalidad] ON 

INSERT [dbo].[TipoCalidad] ([IdCalidad], [Calidad]) VALUES (1, N'Borrador')
INSERT [dbo].[TipoCalidad] ([IdCalidad], [Calidad]) VALUES (2, N'Fecu')
INSERT [dbo].[TipoCalidad] ([IdCalidad], [Calidad]) VALUES (3, N'Clasificado')
INSERT [dbo].[TipoCalidad] ([IdCalidad], [Calidad]) VALUES (4, N'8 Columnas')
INSERT [dbo].[TipoCalidad] ([IdCalidad], [Calidad]) VALUES (5, N'Interno')
INSERT [dbo].[TipoCalidad] ([IdCalidad], [Calidad]) VALUES (6, N'Auditado')
INSERT [dbo].[TipoCalidad] ([IdCalidad], [Calidad]) VALUES (7, N'Consolidado')
INSERT [dbo].[TipoCalidad] ([IdCalidad], [Calidad]) VALUES (8, N'Combinado')
SET IDENTITY_INSERT [dbo].[TipoCalidad] OFF
INSERT [dbo].[TipoConceptos] ([IdTipoConcepto], [TipoConcepto]) VALUES (1, N'Escritura')
INSERT [dbo].[TipoConceptos] ([IdTipoConcepto], [TipoConcepto]) VALUES (2, N'FUTURO USO')
INSERT [dbo].[TipoConceptos] ([IdTipoConcepto], [TipoConcepto]) VALUES (3, N'FUTURO USO')
INSERT [dbo].[TipoConceptos] ([IdTipoConcepto], [TipoConcepto]) VALUES (4, N'FUTURO USO')
INSERT [dbo].[TipoConceptos] ([IdTipoConcepto], [TipoConcepto]) VALUES (5, N'FUTURO USO')
INSERT [dbo].[TipoConceptos] ([IdTipoConcepto], [TipoConcepto]) VALUES (6, N'FUTURO USO')
INSERT [dbo].[TipoConceptos] ([IdTipoConcepto], [TipoConcepto]) VALUES (7, N'Solo Lectura')
INSERT [dbo].[TipoGrupos] ([IdTipoGrupo], [NombreTipoGrupo]) VALUES (1, N'RESUMEN FINANCIERO')
INSERT [dbo].[TipoGrupos] ([IdTipoGrupo], [NombreTipoGrupo]) VALUES (2, N'FLUJO DE CAJA')
INSERT [dbo].[TipoGrupos] ([IdTipoGrupo], [NombreTipoGrupo]) VALUES (3, N'BALANCE')
INSERT [dbo].[TipoGrupos] ([IdTipoGrupo], [NombreTipoGrupo]) VALUES (4, N'ESTADO DE PERDIDAS Y GANANCIAS')
INSERT [dbo].[TipoGrupos] ([IdTipoGrupo], [NombreTipoGrupo]) VALUES (5, N'RECONCILIACIÓN DEL PATRIMONIO')
INSERT [dbo].[TipoGrupos] ([IdTipoGrupo], [NombreTipoGrupo]) VALUES (6, N'RECONCILIACIÓN DEL ACTIVO FIJO FÍSICO')
INSERT [dbo].[TipoGrupos] ([IdTipoGrupo], [NombreTipoGrupo]) VALUES (7, N'DEUDAS')
INSERT [dbo].[TipoGrupos] ([IdTipoGrupo], [NombreTipoGrupo]) VALUES (8, N'OTROS')
/****** Object:  Index [IX_Balances]    Script Date: 07-11-2016 19:12:46 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Balances]') AND name = N'IX_Balances')
CREATE UNIQUE NONCLUSTERED INDEX [IX_Balances] ON [dbo].[Balances]
(
	[IdCliente] ASC,
	[IdTipoBalance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Clientes]    Script Date: 07-11-2016 19:12:46 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Clientes]') AND name = N'IX_Clientes')
CREATE UNIQUE NONCLUSTERED INDEX [IX_Clientes] ON [dbo].[Clientes]
(
	[RUTCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_principal_name]    Script Date: 07-11-2016 19:12:46 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[sysdiagrams]') AND name = N'UK_principal_name')
ALTER TABLE [dbo].[sysdiagrams] ADD  CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED 
(
	[principal_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BalanceDetalle_BalancePeriodo]') AND parent_object_id = OBJECT_ID(N'[dbo].[BalanceDetalle]'))
ALTER TABLE [dbo].[BalanceDetalle]  WITH CHECK ADD  CONSTRAINT [FK_BalanceDetalle_BalancePeriodo] FOREIGN KEY([IdPeriodo])
REFERENCES [dbo].[BalancePeriodo] ([IdPeriodo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BalanceDetalle_BalancePeriodo]') AND parent_object_id = OBJECT_ID(N'[dbo].[BalanceDetalle]'))
ALTER TABLE [dbo].[BalanceDetalle] CHECK CONSTRAINT [FK_BalanceDetalle_BalancePeriodo]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BalancePeriodo_Analistas]') AND parent_object_id = OBJECT_ID(N'[dbo].[BalancePeriodo]'))
ALTER TABLE [dbo].[BalancePeriodo]  WITH CHECK ADD  CONSTRAINT [FK_BalancePeriodo_Analistas] FOREIGN KEY([IdAnalista])
REFERENCES [dbo].[Analistas] ([IdAnalista])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BalancePeriodo_Analistas]') AND parent_object_id = OBJECT_ID(N'[dbo].[BalancePeriodo]'))
ALTER TABLE [dbo].[BalancePeriodo] CHECK CONSTRAINT [FK_BalancePeriodo_Analistas]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BalancePeriodo_Balances]') AND parent_object_id = OBJECT_ID(N'[dbo].[BalancePeriodo]'))
ALTER TABLE [dbo].[BalancePeriodo]  WITH CHECK ADD  CONSTRAINT [FK_BalancePeriodo_Balances] FOREIGN KEY([IdBalance])
REFERENCES [dbo].[Balances] ([IdBalance])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BalancePeriodo_Balances]') AND parent_object_id = OBJECT_ID(N'[dbo].[BalancePeriodo]'))
ALTER TABLE [dbo].[BalancePeriodo] CHECK CONSTRAINT [FK_BalancePeriodo_Balances]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BalancePeriodo_Estados]') AND parent_object_id = OBJECT_ID(N'[dbo].[BalancePeriodo]'))
ALTER TABLE [dbo].[BalancePeriodo]  WITH CHECK ADD  CONSTRAINT [FK_BalancePeriodo_Estados] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estados] ([IdEstado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BalancePeriodo_Estados]') AND parent_object_id = OBJECT_ID(N'[dbo].[BalancePeriodo]'))
ALTER TABLE [dbo].[BalancePeriodo] CHECK CONSTRAINT [FK_BalancePeriodo_Estados]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BalancePeriodo_TipoCalidad]') AND parent_object_id = OBJECT_ID(N'[dbo].[BalancePeriodo]'))
ALTER TABLE [dbo].[BalancePeriodo]  WITH CHECK ADD  CONSTRAINT [FK_BalancePeriodo_TipoCalidad] FOREIGN KEY([IdCalidad])
REFERENCES [dbo].[TipoCalidad] ([IdCalidad])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BalancePeriodo_TipoCalidad]') AND parent_object_id = OBJECT_ID(N'[dbo].[BalancePeriodo]'))
ALTER TABLE [dbo].[BalancePeriodo] CHECK CONSTRAINT [FK_BalancePeriodo_TipoCalidad]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Balances_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Balances]'))
ALTER TABLE [dbo].[Balances]  WITH CHECK ADD  CONSTRAINT [FK_Balances_Clientes] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([IdCliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Balances_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Balances]'))
ALTER TABLE [dbo].[Balances] CHECK CONSTRAINT [FK_Balances_Clientes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Balances_Monedas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Balances]'))
ALTER TABLE [dbo].[Balances]  WITH CHECK ADD  CONSTRAINT [FK_Balances_Monedas] FOREIGN KEY([IdMoneda])
REFERENCES [dbo].[Monedas] ([IdMoneda])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Balances_Monedas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Balances]'))
ALTER TABLE [dbo].[Balances] CHECK CONSTRAINT [FK_Balances_Monedas]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Balances_TipoBalance]') AND parent_object_id = OBJECT_ID(N'[dbo].[Balances]'))
ALTER TABLE [dbo].[Balances]  WITH CHECK ADD  CONSTRAINT [FK_Balances_TipoBalance] FOREIGN KEY([IdTipoBalance])
REFERENCES [dbo].[TipoBalance] ([IdTipoBalance])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Balances_TipoBalance]') AND parent_object_id = OBJECT_ID(N'[dbo].[Balances]'))
ALTER TABLE [dbo].[Balances] CHECK CONSTRAINT [FK_Balances_TipoBalance]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Conceptos_ConceptosGrupos]') AND parent_object_id = OBJECT_ID(N'[dbo].[Conceptos]'))
ALTER TABLE [dbo].[Conceptos]  WITH CHECK ADD  CONSTRAINT [FK_Conceptos_ConceptosGrupos] FOREIGN KEY([IdGrupo])
REFERENCES [dbo].[ConceptosGrupos] ([IdGrupo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Conceptos_ConceptosGrupos]') AND parent_object_id = OBJECT_ID(N'[dbo].[Conceptos]'))
ALTER TABLE [dbo].[Conceptos] CHECK CONSTRAINT [FK_Conceptos_ConceptosGrupos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Conceptos_TipoBalance]') AND parent_object_id = OBJECT_ID(N'[dbo].[Conceptos]'))
ALTER TABLE [dbo].[Conceptos]  WITH CHECK ADD  CONSTRAINT [FK_Conceptos_TipoBalance] FOREIGN KEY([IdTipoBalance])
REFERENCES [dbo].[TipoBalance] ([IdTipoBalance])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Conceptos_TipoBalance]') AND parent_object_id = OBJECT_ID(N'[dbo].[Conceptos]'))
ALTER TABLE [dbo].[Conceptos] CHECK CONSTRAINT [FK_Conceptos_TipoBalance]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Conceptos_TipoConceptos]') AND parent_object_id = OBJECT_ID(N'[dbo].[Conceptos]'))
ALTER TABLE [dbo].[Conceptos]  WITH CHECK ADD  CONSTRAINT [FK_Conceptos_TipoConceptos] FOREIGN KEY([IdTipoConcepto])
REFERENCES [dbo].[TipoConceptos] ([IdTipoConcepto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Conceptos_TipoConceptos]') AND parent_object_id = OBJECT_ID(N'[dbo].[Conceptos]'))
ALTER TABLE [dbo].[Conceptos] CHECK CONSTRAINT [FK_Conceptos_TipoConceptos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConceptosGrupos_TipoGrupos]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConceptosGrupos]'))
ALTER TABLE [dbo].[ConceptosGrupos]  WITH CHECK ADD  CONSTRAINT [FK_ConceptosGrupos_TipoGrupos] FOREIGN KEY([IdTipoGrupo])
REFERENCES [dbo].[TipoGrupos] ([IdTipoGrupo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConceptosGrupos_TipoGrupos]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConceptosGrupos]'))
ALTER TABLE [dbo].[ConceptosGrupos] CHECK CONSTRAINT [FK_ConceptosGrupos_TipoGrupos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Log_LogCategorias]') AND parent_object_id = OBJECT_ID(N'[dbo].[Log]'))
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [FK_Log_LogCategorias] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[LogCategorias] ([IdCategoria])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Log_LogCategorias]') AND parent_object_id = OBJECT_ID(N'[dbo].[Log]'))
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [FK_Log_LogCategorias]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Log_TipoBalance]') AND parent_object_id = OBJECT_ID(N'[dbo].[Log]'))
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [FK_Log_TipoBalance] FOREIGN KEY([IdTipoBalance])
REFERENCES [dbo].[TipoBalance] ([IdTipoBalance])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Log_TipoBalance]') AND parent_object_id = OBJECT_ID(N'[dbo].[Log]'))
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [FK_Log_TipoBalance]
GO
/****** Object:  StoredProcedure [dbo].[CalcularBalanceCombinadoPorPeriodo]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CalcularBalanceCombinadoPorPeriodo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[CalcularBalanceCombinadoPorPeriodo] AS' 
END
GO
ALTER PROCEDURE [dbo].[CalcularBalanceCombinadoPorPeriodo]
@ListaRUTs NVARCHAR(100),
@Periodo INT
AS
BEGIN
/*
	Ejemplo de ejecución:
	exec dbo.[CalcularBalanceCombinadoPorPeriodo] '177529672', 20011231
*/
	SELECT CT.IdConcepto, CT.IdTipoConcepto, BP.Periodo, SUM(BD.Monto) AS Monto, 2 AS IdEstado, 'Terminado' AS Estado
	FROM [dbo].[BalanceDetalle] BD
	RIGHT JOIN [dbo].[Conceptos] CT ON CT.IdConcepto = BD.IdConcepto AND CT.IdTipoBalance = 1
	INNER JOIN [dbo].[BalancePeriodo] BP ON BP.IdPeriodo = BD.IdPeriodo
	INNER JOIN [dbo].[Balances] B ON B.IdBalance = BP.IdBalance
	INNER JOIN [dbo].[Clientes] C ON C.IdCliente = B.IdCliente
	INNER JOIN dbo.FuncionDividirString(@ListaRUTs, ',') R ON R.item = C.RUTCliente
	WHERE BP.Periodo = @Periodo AND B.IdTipoBalance = 1 AND BP.IdEstado = 2
    GROUP BY CT.IdConcepto, CT.IdTipoConcepto, BP.Periodo

END

GO
/****** Object:  StoredProcedure [dbo].[InsertarEditarAnalista]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertarEditarAnalista]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[InsertarEditarAnalista] AS' 
END
GO
ALTER PROCEDURE [dbo].[InsertarEditarAnalista]
@IdAnalista INT,
@NombreCompleto NVARCHAR(250),
@UsuarioNT NVARCHAR(20)
AS
BEGIN

DECLARE @ID INT
SET @ID = -1;

IF (@IdAnalista IS NOT NULL)
BEGIN
	UPDATE [dbo].[Analistas] SET [NombreCompleto] = @NombreCompleto, UsuarioNT = @UsuarioNT WHERE IdAnalista = @IdAnalista
	IF (@@ROWCOUNT = 1)
		SET @ID = @IdAnalista
END
ELSE
BEGIN
	IF NOT EXISTS(SELECT IdAnalista FROM [dbo].[Analistas] WHERE NombreCompleto like '%'+@NombreCompleto+'%')
	BEGIN
		INSERT INTO [dbo].[Analistas] (NombreCompleto, UsuarioNT) VALUES (@NombreCompleto,  @UsuarioNT)
		SELECT @ID = SCOPE_IDENTITY() ;
	END
	ELSE
	BEGIN
		SELECT @ID = (SELECT IdAnalista FROM [dbo].[Analistas] WHERE NombreCompleto like '%'+@NombreCompleto+'%')
	END
END

SELECT @ID AS IdAnalista

RETURN @ID;

END


GO
/****** Object:  StoredProcedure [dbo].[InsertarEditarBalance]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertarEditarBalance]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[InsertarEditarBalance] AS' 
END
GO
ALTER PROCEDURE [dbo].[InsertarEditarBalance]
@IdBalance INT,
@IdCliente INT,
@IdMoneda TINYINT,
@IdTipoBalance TINYINT,
@FormatoMoneda NVARCHAR(50),
@Ejecutivo NVARCHAR(100),
@Fecha SMALLDATETIME,
@Usuario NVARCHAR(50)
AS
BEGIN

DECLARE @ID INT
SET @ID = -1;

IF (@IdBalance IS NULL)
BEGIN
	INSERT INTO [dbo].[Balances]
	VALUES (@IdCliente, @IdMoneda, @IdTipoBalance, @FormatoMoneda, @Ejecutivo, @Fecha, @Fecha, @Usuario)

	SELECT @ID = SCOPE_IDENTITY();
END
ELSE
BEGIN
	SET @ID = @IdBalance
	UPDATE [dbo].[Balances]
	SET [IdCliente] = CASE WHEN @IdCliente IS NULL THEN [IdCliente] ELSE @IdCliente END,
	[IdMoneda] = CASE WHEN @IdMoneda IS NULL THEN [IdMoneda] ELSE @IdMoneda END,
	[IdTipoBalance] = CASE WHEN @IdTipoBalance IS NULL THEN [IdTipoBalance] ELSE @IdTipoBalance END,
	[FormatoMoneda] = CASE WHEN @FormatoMoneda IS NULL THEN [FormatoMoneda] ELSE @FormatoMoneda END,
	[Ejecutivo] = CASE WHEN @Ejecutivo IS NULL THEN [Ejecutivo] ELSE @Ejecutivo END,
	[FechaModificacion] = CASE WHEN @Fecha IS NULL THEN [FechaModificacion] ELSE @Fecha END,
	[UltimoUsuario] = CASE WHEN @Usuario IS NULL THEN [UltimoUsuario] ELSE @Usuario END
	WHERE [IdBalance] = @IdBalance

	IF (@@ROWCOUNT = 0)
	BEGIN
		RAISERROR(N'ERROR: No se actualizo ningun registro de la tabla [Balances]...', 16, 1);
	END
END

SELECT @ID AS IdBalance

RETURN @ID

END


GO
/****** Object:  StoredProcedure [dbo].[InsertarEditarBalanceDetalle]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertarEditarBalanceDetalle]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[InsertarEditarBalanceDetalle] AS' 
END
GO
--DROP PROCEDURE [dbo].[InsertarEditarBalanceDetalle]
ALTER PROCEDURE [dbo].[InsertarEditarBalanceDetalle]
@FechaHora SMALLDATETIME,
@UsuarioNT NVARCHAR(50),
@TVP dbo.TVPConcepto READONLY
AS
BEGIN

DECLARE @ID INT
SET @ID = -1;

	DECLARE @IdPeriodo INT, @IdConcepto INT, @FechaCierre INT, @Monto FLOAT, @MontoVisible NVARCHAR(50), @Descripcion NVARCHAR(100), @Comentario NVARCHAR(MAX);

	DECLARE detail_cursor CURSOR FOR
	SELECT IdConcepto, IdPeriodo, Monto, MontoVisible, Descripcion, Comentario, FechaCierre FROM @TVP
	OPEN detail_cursor;
	
	FETCH NEXT FROM detail_cursor 
	INTO @IdConcepto, @IdPeriodo, @Monto, @MontoVisible, @Descripcion,@Comentario, @FechaCierre;
	WHILE @@FETCH_STATUS = 0
	BEGIN
	--EMPIEZA

	SET @ID = (SELECT ISNULL(ID, NULL) FROM [dbo].[BalanceDetalle] WHERE [IdPeriodo] = @IdPeriodo AND [IdConcepto] = @IdConcepto AND [FechaCierre] = @FechaCierre)
	IF (@ID IS NULL)
	BEGIN
		--PRINT 'ENTRO - INSERT'
		INSERT [dbo].[BalanceDetalle]
		VALUES (@IdPeriodo, @IdConcepto, @FechaCierre, @Monto, @MontoVisible, @Descripcion, @FechaHora, @FechaHora, @Comentario, @UsuarioNT)
	END
	ELSE
	BEGIN
		--PRINT 'ENTRO - UPDATE'
		UPDATE [dbo].[BalanceDetalle] SET
		[FechaCierre] = CASE WHEN @FechaCierre IS NULL THEN [FechaCierre] ELSE @FechaCierre END,
		[Monto] = CASE WHEN @Monto IS NULL THEN [Monto] ELSE @Monto END,
		[MontoVisible] = CASE WHEN @MontoVisible IS NULL THEN [MontoVisible] ELSE @MontoVisible END,
		[Descripcion] = CASE WHEN @Descripcion IS NULL THEN [Descripcion] ELSE @Descripcion END,
		[FechaModificacion] = GETDATE(),
		[Comentario] = CASE WHEN @Comentario IS NULL THEN [Comentario] ELSE @Comentario END,
		[UltimoUsuario] = CASE WHEN @UsuarioNT IS NULL THEN [UltimoUsuario] ELSE @UsuarioNT END
		WHERE [Id] = @ID

	END

	--PRINT 'IdConcepto: ' + CAST (@IdConcepto AS NVARCHAR(2))
	--CURSOR CONTINUA
	FETCH NEXT FROM detail_cursor 
    INTO @IdConcepto, @IdPeriodo, @Monto, @MontoVisible, @Descripcion, @Comentario, @FechaCierre;
	END
	CLOSE detail_cursor;
	DEALLOCATE detail_cursor;

RETURN;

END



GO
/****** Object:  StoredProcedure [dbo].[InsertarEditarBalanceDetallePorConcepto]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertarEditarBalanceDetallePorConcepto]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[InsertarEditarBalanceDetallePorConcepto] AS' 
END
GO
ALTER PROCEDURE [dbo].[InsertarEditarBalanceDetallePorConcepto]
@IdConcepto INT,
@IdPeriodo INT,
@FechaCierre INT,
@Monto FLOAT,
@Descripcion NVARCHAR(100),
@FechaHora SMALLDATETIME,
@UsuarioNT NVARCHAR(50),
@Nota TEXT
AS
BEGIN

DECLARE @ID INT, @ExistsId INT
SET @ID = -1;
SELECT @ExistsId = ISNULL(Id, NULL) FROM [dbo].[BalanceDetalle] WHERE IdPeriodo = @IdPeriodo AND IdConcepto = @IdConcepto

IF (@ExistsId IS NULL)
BEGIN
	INSERT [dbo].[BalanceDetalle]
	VALUES (@IdPeriodo,@IdConcepto,@FechaCierre,@Monto,@Descripcion,@FechaHora,@FechaHora,@Nota,@UsuarioNT)

	SELECT @ID = SCOPE_IDENTITY();
END
ELSE
BEGIN
	SET @ID = @ExistsId

	UPDATE [dbo].[BalanceDetalle] SET
	[IdPeriodo] = CASE WHEN @IdPeriodo IS NULL THEN [IdPeriodo] ELSE @IdPeriodo END,
	[IdConcepto] = CASE WHEN @IdConcepto IS NULL THEN [IdConcepto] ELSE @IdConcepto END,
	[FechaCierre] = CASE WHEN @FechaCierre IS NULL THEN [FechaCierre] ELSE @FechaCierre END,
	[Monto] = CASE WHEN @Monto IS NULL THEN [Monto] ELSE @Monto END,
	[Descripcion] = CASE WHEN @Descripcion IS NULL THEN [Descripcion] ELSE @Descripcion END,
	[FechaModificacion] = CASE WHEN @FechaHora IS NULL THEN GETDATE() ELSE @FechaHora END,
	[Comentario] = CASE WHEN @Nota IS NULL THEN [Comentario] ELSE @Nota END,
	[UltimoUsuario] = CASE WHEN @UsuarioNT IS NULL THEN [UltimoUsuario] ELSE @UsuarioNT END
	WHERE [Id] = @ID

	IF (@@ROWCOUNT = 0)
	BEGIN
		RAISERROR(N'ERROR: No se actualizo ningun registro de la tabla [BalanceDetalle]...', 16, 1);
	END
END

RETURN @ID

END


GO
/****** Object:  StoredProcedure [dbo].[InsertarEditarBalanceDetalleXML]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertarEditarBalanceDetalleXML]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[InsertarEditarBalanceDetalleXML] AS' 
END
GO
--DROP PROCEDURE [dbo].[InsertarEditarBalanceDetalleXML]
ALTER PROCEDURE [dbo].[InsertarEditarBalanceDetalleXML]
@Fecha VARCHAR(10),
@UsuarioNT NVARCHAR(50),
@Detalles XML
AS
BEGIN
DECLARE @FechaHora SMALLDATETIME
SET @FechaHora = CONVERT(SMALLDATETIME, @Fecha, 111)
DECLARE @TVP dbo.TVPConcepto
DECLARE @ID INT
SET @ID = -1;
	
	INSERT INTO @TVP (IdConcepto, IdPeriodo, Monto, MontoVisible, Descripcion, Comentario, FechaCierre)
	SELECT x.v.value('IdConcepto[1]', 'INT')
			,x.v.value('IdPeriodo[1]', 'INT')
			, x.v.value('Monto[1]', 'FLOAT')
			, x.v.value('MontoVisible[1]', 'NVARCHAR(50)')
			, x.v.value('Descripcion[1]', 'NVARCHAR(100)')
			, x.v.value('Comentario[1]', 'NVARCHAR(MAX)')
			, x.v.value('FechaCierre[1]', 'INT')
	FROM @Detalles.nodes('root/row') x(v)

	--SELECT * FROM @TVP

	DECLARE @IdPeriodo INT, @IdConcepto INT, @FechaCierre INT, @Monto FLOAT, @MontoVisible NVARCHAR(50), @Descripcion NVARCHAR(100), @Comentario NVARCHAR(MAX);

	DECLARE detail_cursor CURSOR FOR
	SELECT IdConcepto, IdPeriodo, Monto, MontoVisible,Descripcion, Comentario, FechaCierre FROM @TVP
	OPEN detail_cursor;
	
	FETCH NEXT FROM detail_cursor 
	INTO @IdConcepto, @IdPeriodo, @Monto, @MontoVisible, @Descripcion, @Comentario, @FechaCierre;
	WHILE @@FETCH_STATUS = 0
	BEGIN
	--EMPIEZA

	SET @ID = (SELECT ISNULL(ID, NULL) FROM [dbo].[BalanceDetalle] WHERE [IdPeriodo] = @IdPeriodo AND [IdConcepto] = @IdConcepto)
	IF (@ID IS NULL)
	BEGIN
		--PRINT 'ENTRO - INSERT'
		INSERT [dbo].[BalanceDetalle]
		VALUES (@IdPeriodo, @IdConcepto, @FechaCierre, @Monto, @MontoVisible, @Descripcion, @FechaHora, @FechaHora, @Comentario, @UsuarioNT)
	END
	ELSE
	BEGIN
		--PRINT 'ENTRO - UPDATE'
		UPDATE [dbo].[BalanceDetalle] SET
		[Monto] = CASE WHEN @Monto IS NULL THEN [Monto] ELSE @Monto END,
		[MontoVisible] = CASE WHEN @MontoVisible IS NULL THEN [MontoVisible] ELSE @MontoVisible END,
		[Descripcion] = CASE WHEN @Descripcion IS NULL THEN [Descripcion] ELSE @Descripcion END,
		[FechaModificacion] = GETDATE(),
		[Comentario] = CASE WHEN @Comentario IS NULL THEN [Comentario] ELSE @Comentario END,
		[UltimoUsuario] = CASE WHEN @UsuarioNT IS NULL THEN [UltimoUsuario] ELSE @UsuarioNT END
		WHERE [Id]=@ID

	END

	--PRINT 'IdConcepto: ' + CAST (@IdConcepto AS NVARCHAR(2))
	--CURSOR CONTINUA
	FETCH NEXT FROM detail_cursor 
    INTO @IdConcepto, @IdPeriodo, @Monto, @MontoVisible, @Descripcion, @Comentario, @FechaCierre;
	END
	CLOSE detail_cursor;
	DEALLOCATE detail_cursor;

RETURN;

END



GO
/****** Object:  StoredProcedure [dbo].[InsertarEditarBalancePeriodo]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertarEditarBalancePeriodo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[InsertarEditarBalancePeriodo] AS' 
END
GO
ALTER PROCEDURE [dbo].[InsertarEditarBalancePeriodo]
@IdPeriodo INT,
@IdBalance INT,
@Periodo INT,
@Meses TINYINT,
@CantidadEmpresas SMALLINT,
@Clientes NVARCHAR(100),
@PeriodosCombinados NVARCHAR(100),
@IdEstado TINYINT,
@IdCalidad TINYINT,
@IdAnalista INT,
@FechaBalance VARCHAR(10),
@UltimoUsuario NVARCHAR(50),
@Comentarios NVARCHAR(MAX)
AS
BEGIN

DECLARE @ID INT
SET @ID = -1;

DECLARE @Fecha SMALLDATETIME
SET @Fecha = CONVERT(SMALLDATETIME, @FechaBalance, 111)

IF (@IdPeriodo IS NULL)
	SET @IdPeriodo = (SELECT ISNULL([IdPeriodo], NULL) 
						FROM [dbo].[BalancePeriodo] 
						WHERE [IdBalance]=@IdBalance 
							AND [Periodo]=@Periodo 
							AND [Meses]=@Meses 
							AND [CantidadEmpresas]=@CantidadEmpresas 
							AND [IdEstado]=@IdEstado 
							AND [IdCalidad] = @IdCalidad);

IF (@IdPeriodo IS NULL)
BEGIN
	--PRINT 'ENTRO / INSERT'
	INSERT dbo.BalancePeriodo
	VALUES (@IdBalance,@Periodo,@Meses,@CantidadEmpresas,@Clientes,@PeriodosCombinados,@IdEstado,@IdCalidad,@IdAnalista,@Fecha,@Fecha,@UltimoUsuario,@Comentarios)

	SELECT @ID = SCOPE_IDENTITY();
END
ELSE
BEGIN
	--PRINT 'ENTRO / UPDATE'
	SET @ID = @IdPeriodo
	UPDATE [dbo].[BalancePeriodo]
	SET 
	[Periodo] = CASE WHEN @Periodo IS NULL THEN [Periodo] ELSE @Periodo END,
	[Meses] = CASE WHEN @Meses IS NULL THEN [Meses] ELSE @Meses END,
	[CantidadEmpresas] = CASE WHEN @CantidadEmpresas IS NULL THEN [CantidadEmpresas] ELSE @CantidadEmpresas END,
	[Clientes] = CASE WHEN @Clientes IS NULL THEN [Clientes] ELSE @Clientes END,
	[PeriodosCombinados] = CASE WHEN @PeriodosCombinados IS NULL THEN [PeriodosCombinados] ELSE @PeriodosCombinados END,
	[IdEstado] = CASE WHEN @IdEstado IS NULL THEN [IdEstado] ELSE @IdEstado END,
	[IdCalidad] = CASE WHEN @IdCalidad IS NULL THEN [IdCalidad] ELSE @IdCalidad END,
	[IdAnalista] = CASE WHEN @IdAnalista IS NULL THEN [IdAnalista] ELSE @IdAnalista END,
	[FechaModificacion] = CASE WHEN @Fecha IS NULL THEN GETDATE() ELSE @Fecha END,
	[UltimoUsuario] = CASE WHEN @UltimoUsuario IS NULL THEN [UltimoUsuario] ELSE @UltimoUsuario END,
	[Comentarios] = CASE WHEN @Comentarios IS NULL THEN [Comentarios] ELSE @Comentarios END
	WHERE [IdPeriodo] = @IdPeriodo

	IF (@@ROWCOUNT = 0)
	BEGIN
		RAISERROR(N'ERROR: No se actualizo ningun registro de la tabla [Balances]...', 16, 1);
	END
END

SELECT @ID AS IdPeriodo

RETURN @ID;

END


GO
/****** Object:  StoredProcedure [dbo].[InsertarEditarCliente]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertarEditarCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[InsertarEditarCliente] AS' 
END
GO
ALTER PROCEDURE [dbo].[InsertarEditarCliente]
@IdCliente INT,
@IdClienteBanco INT,
@RUTCliente NVARCHAR(10),
@NombreCompleto NVARCHAR(250),
@RazonSocial NVARCHAR(250),
@Giro NVARCHAR(250),
@CodActivo INT,
@Segmento NVARCHAR(50),
@CRD NVARCHAR(50),
@VE NVARCHAR(50),
@ClienteDesde SMALLDATETIME,
@UsuarioNT NVARCHAR(100)
AS
BEGIN

DECLARE @ID INT
SET @ID = -1;

IF (@IdCliente IS NULL)
BEGIN
	INSERT [dbo].[Clientes] ([IdClienteBanco],[RUTCliente], [NombreCompleto], [RazonSocial], [Giro], [CodActivo],[Segmento],[CRD],[VE],[ClienteDesde],[UltimoUsuario])
	VALUES (@IdClienteBanco, @RUTCliente, @NombreCompleto, @RazonSocial, @Giro, @CodActivo, @Segmento, @CRD, @VE, @ClienteDesde, @UsuarioNT)
	
	SELECT @ID = SCOPE_IDENTITY();
END
ELSE
BEGIN
	SET @ID = @IdCliente
	UPDATE [dbo].[Clientes] 
	SET [IdClienteBanco] = CASE WHEN @IdClienteBanco IS NULL THEN [IdClienteBanco] ELSE @IdClienteBanco END,
		[NombreCompleto] = CASE WHEN @NombreCompleto IS NULL THEN [NombreCompleto] ELSE @NombreCompleto END,
		[RazonSocial] = CASE WHEN @RazonSocial IS NULL THEN [RazonSocial] ELSE @RazonSocial END,
		[Giro] = CASE WHEN @Giro IS NULL THEN [Giro] ELSE @Giro END,
		[CodActivo] = CASE WHEN @CodActivo IS NULL THEN [CodActivo] ELSE @CodActivo END,
		[Segmento] = CASE WHEN @Segmento IS NULL THEN [Segmento] ELSE @Segmento END, 
		[CRD] = CASE WHEN @CRD IS NULL THEN [CRD] ELSE @CRD END, 
		[VE]  = CASE WHEN @VE IS NULL THEN [VE] ELSE @VE END,
		[ClienteDesde] = CASE WHEN @ClienteDesde IS NULL THEN [ClienteDesde] ELSE @ClienteDesde END,
		[UltimoUsuario] = CASE WHEN @UsuarioNT IS NULL THEN [UltimoUsuario] ELSE @UsuarioNT END
	WHERE [IdCliente] = @IdCliente
END

SELECT @ID AS IdCliente

RETURN @ID;

END


GO
/****** Object:  StoredProcedure [dbo].[InsertarLog]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertarLog]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[InsertarLog] AS' 
END
GO
-- =============================================
-- Author:		José Luis Yañez Rojas
-- Create date: 04-11-2016
-- Description:	Inserta un registro de acceso a la tabla Log
-- =============================================
ALTER PROCEDURE [dbo].[InsertarLog]
@IdTipoBalance TINYINT,
@IdCategoria SMALLINT,
@Origen TINYINT, -- 1 = Planilla / 2 = Reportes
@UsuarioNT NVARCHAR(50), -- UsuarioNT
@TipoConsulta TINYINT, -- 1 = Lectura / 2 = Escritura
@DatosConsulta XML -- 
AS
BEGIN
	/* 
		Estructura del XML a recibir:
		<Datos>
			<RUT></RUT>
			<Periodo></Periodo>
			<Comentario></Comentario>
		</Datos>
	*/
	SET NOCOUNT ON;

    INSERT INTO [dbo].[Log]
	VALUES (@IdTipoBalance, @IdCategoria, @Origen, @UsuarioNT, GETDATE(), @TipoConsulta, @DatosConsulta)
	
END


GO
/****** Object:  StoredProcedure [dbo].[ObtenerBalancesClientes]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtenerBalancesClientes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ObtenerBalancesClientes] AS' 
END
GO
ALTER PROCEDURE [dbo].[ObtenerBalancesClientes]
@IdCliente INT,
@RUTCliente NVARCHAR(10),
@IdTipoBalance TINYINT
AS
BEGIN

	SELECT B.IdBalance, B.IdCliente, B.IdTipoBalance, TB.TipoBalance, M.IdMoneda, M.Moneda
	,B.FormatoMoneda, B.Ejecutivo
	FROM [dbo].[Balances] B
	INNER JOIN [dbo].[Clientes] C ON C.IdCliente = B.IdCliente
	LEFT JOIN [dbo].[Monedas] M ON M.IdMoneda = B.IdMoneda
	LEFT JOIN [dbo].[TipoBalance] TB ON TB.IdTipoBalance = B.IdTipoBalance
	WHERE B.[IdCliente] = CASE WHEN @IdCliente IS NULL THEN B.[IdCliente] ELSE @IdCliente END 
	AND  C.[RUTCliente] = CASE WHEN @RUTCliente IS NULL THEN C.[RUTCliente] ELSE @RUTCliente END
	AND B.[IdTipoBalance] = CASE WHEN @IdTipoBalance IS NULL THEN B.[IdTipoBalance] ELSE @IdTipoBalance END

END


GO
/****** Object:  StoredProcedure [dbo].[ObtenerBalancesCombinadosPorPeriodo]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtenerBalancesCombinadosPorPeriodo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ObtenerBalancesCombinadosPorPeriodo] AS' 
END
GO
ALTER PROCEDURE [dbo].[ObtenerBalancesCombinadosPorPeriodo]
@RUTEmpresa NVARCHAR(10),
@Periodo INT,
@Meses SMALLINT,
@CantidadEmpresas SMALLINT,
@ListaRUTs NVARCHAR(100)
AS
BEGIN
/*
	Ejemplo de ejecución:
	exec dbo.ObtenerBalancesCombinadosPorPeriodo
*/

DECLARE @IdBalance INT, @IdPeriodo INT
SELECT @IdBalance=IdBalance FROM [dbo].[Balances] B
INNER JOIN  [dbo].[Clientes] C ON C.IdCliente = B.IdCliente
WHERE B.IdTipoBalance = 3

IF (@IdBalance IS NULL)
BEGIN
	SELECT NULL AS IdBalance, NULL AS IdPeriodo
END
ELSE
BEGIN --Buscamos si los balances coinciden con los parametros de busqueda.

/* Los registros de los balances combinados son siempre en estado "Terminado (2)" y tipo de Calidad "Combinado (8)" */
SELECT @IdPeriodo = IdPeriodo FROM [dbo].[BalancePeriodo]
WHERE IdBalance = @IdBalance AND Periodo = @Periodo AND Meses = @Meses AND CantidadEmpresas = @CantidadEmpresas AND Clientes = @ListaRUTs AND IdEstado = 2 AND IdCalidad = 8

SELECT @IdBalance AS IdBalance, @IdPeriodo AS IdPeriodo

END
--INNER JOIN dbo.FuncionDividirString(@ListaRUTs, ',') R ON R.item = C.RUTCliente
--WHERE BP.IdPeriodo IN (SELECT item FROM dbo.FuncionDividirString(@ListaIdPeriodos, ','))

END

GO
/****** Object:  StoredProcedure [dbo].[ObtenerBalancesDetalles]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtenerBalancesDetalles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ObtenerBalancesDetalles] AS' 
END
GO
ALTER PROCEDURE [dbo].[ObtenerBalancesDetalles]
@IdCliente INT,
@IdTipoBalance TINYINT,
@IdBalance INT,
@IdPeriodo INT,
@IdEstado INT,
@IdCalidad INT
AS
BEGIN

	SELECT BD.IdConcepto, CT.Concepto, BD.[Monto], BD.[Descripcion], BD.[Comentario], BD.FechaCierre, CT.IdTipoConcepto
	FROM [dbo].[Balances] B
	INNER JOIN [dbo].[Clientes] C ON C.IdCliente = B.IdCliente AND B.IdBalance = @IdBalance
	INNER JOIN [dbo].[BalancePeriodo] BP ON BP.[IdBalance] = B.IdBalance AND BP.IdPeriodo = @IdPeriodo
	INNER JOIN [dbo].[BalanceDetalle] BD ON BD.[IdPeriodo] = BP.IdPeriodo
	INNER JOIN [dbo].[Conceptos] CT ON CT.[IdConcepto] = BD.[IdConcepto]
	WHERE 
	B.[IdCliente] = CASE WHEN @IdCliente IS NULL THEN B.[IdCliente] ELSE @IdCliente END 
	AND BP.IdEstado = CASE WHEN @IdEstado IS NULL THEN BP.IdEstado ELSE @IdEstado END
	AND BP.IdCalidad = CASE WHEN @IdCalidad IS NULL THEN BP.IdCalidad ELSE @IdCalidad END
	AND CT.IdTipoBalance = @IdTipoBalance

END


GO
/****** Object:  StoredProcedure [dbo].[ObtenerBalancesPeriodosCliente]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtenerBalancesPeriodosCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ObtenerBalancesPeriodosCliente] AS' 
END
GO
ALTER PROCEDURE [dbo].[ObtenerBalancesPeriodosCliente]
@IdCliente INT,
@RUTCliente NVARCHAR(10),
@IdPeriodo INT,
@Periodo INT,
@IdEstado TINYINT,
@IdCalidad TINYINT,
@Meses TINYINT,
@IdTipoBalance TINYINT,
@CantidadEmpresas SMALLINT
AS
BEGIN

	SELECT B.IdBalance, BP.IdPeriodo, B.IdCliente, B.IdTipoBalance, TB.TipoBalance, BP.Periodo, BP.Meses, BP.CantidadEmpresas, BP.Clientes, BP.IdEstado, E.Estado, BP.IdCalidad, TC.Calidad, M.IdMoneda, M.Moneda
	,B.FormatoMoneda, B.Ejecutivo, BP.IdAnalista, A.NombreCompleto As NombreAnalista, BP.[UltimoUsuario], BP.[Comentarios]
	FROM [dbo].[Balances] B
	INNER JOIN [dbo].[Clientes] C ON C.IdCliente = B.IdCliente
	LEFT JOIN [dbo].[BalancePeriodo] BP ON B.IdBalance = BP.IdBalance
	LEFT JOIN [dbo].[Monedas] M ON M.IdMoneda = B.IdMoneda
	LEFT JOIN [dbo].[Estados] E ON E.IdEstado = BP.IdEstado
	LEFT JOIN [dbo].[TipoCalidad] TC ON TC.IdCalidad = BP.IdCalidad
	LEFT JOIN [dbo].[TipoBalance] TB ON TB.IdTipoBalance = B.IdTipoBalance
	LEFT JOIN [dbo].[Analistas] A ON A.IdAnalista = BP.IdAnalista
	WHERE B.[IdCliente] = CASE WHEN @IdCliente IS NULL THEN B.[IdCliente] ELSE @IdCliente END
	AND  C.[RUTCliente] = CASE WHEN @RUTCliente IS NULL THEN C.[RUTCliente] ELSE @RUTCliente END
	AND B.[IdTipoBalance] = CASE WHEN @IdTipoBalance IS NULL THEN B.[IdTipoBalance] ELSE @IdTipoBalance END
	AND BP.[IdPeriodo] = CASE WHEN @IdPeriodo IS NULL THEN BP.[IdPeriodo] ELSE @IdPeriodo END
	AND BP.[Periodo] = CASE WHEN @Periodo IS NULL THEN BP.[Periodo] ELSE @Periodo END
	AND BP.[Meses] = CASE WHEN @Meses IS NULL THEN BP.[Meses] ELSE @Meses END
	AND BP.[IdEstado] = CASE WHEN @IdEstado IS NULL THEN BP.[IdEstado] ELSE @IdEstado END
	AND BP.[IdCalidad] = CASE WHEN @IdCalidad IS NULL THEN (SELECT MAX([IdCalidad]) FROM [dbo].[BalancePeriodo] WHERE [IdBalance] = BP.[IdBalance] AND [Periodo] = BP.[Periodo] AND [IdEstado] = BP.[IdEstado]) ELSE @IdCalidad END
	AND BP.[CantidadEmpresas] = CASE WHEN @CantidadEmpresas IS NULL THEN BP.[CantidadEmpresas] ELSE @CantidadEmpresas END
	ORDER BY BP.Periodo ASC
END



GO
/****** Object:  StoredProcedure [dbo].[ObtenerPeriodosIngresados]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtenerPeriodosIngresados]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ObtenerPeriodosIngresados] AS' 
END
GO
ALTER PROCEDURE [dbo].[ObtenerPeriodosIngresados]
@Periodo1 NVARCHAR(10),
@Periodo2 NVARCHAR(10),
@Periodo3 NVARCHAR(10),
@Periodo4 NVARCHAR(10),
@ListaRUTs NVARCHAR(100),
@CantidadMeses1 TINYINT,
@CantidadMeses2 TINYINT,
@CantidadMeses3 TINYINT,
@CantidadMeses4 TINYINT,
@IdEstado TINYINT,
@IdTipoBalance TINYINT
AS
BEGIN

/*
	exec dbo.ObtenerPeriodosIngresados '31-12-2000', NULL, NULL, NULL
	,'177529672,240868644', 12, NULL, NULL, NULL, 2, 1
*/

DECLARE @PeriodosActivos TABLE
(
	RUT NVARCHAR(10),
	IdPeriodo1 INT NULL,
	IdPeriodo2 INT NULL,
	IdPeriodo3 INT NULL,
	IdPeriodo4 INT NULL
)
DECLARE @Per1 INT, @Per2 INT, @Per3 INT, @Per4 INT

SET @Per1 = (SELECT dbo.FormatearFechaCierre(@Periodo1))
SET @Per2 = (SELECT dbo.FormatearFechaCierre(@Periodo2))
SET @Per3 = (SELECT dbo.FormatearFechaCierre(@Periodo3))
SET @Per4 = (SELECT dbo.FormatearFechaCierre(@Periodo4))

SET @ListaRUTs = REPLACE(@ListaRUTs,'-','')
SET @ListaRUTs = REPLACE(@ListaRUTs,' ','')

INSERT INTO @PeriodosActivos (RUT, IdPeriodo1, IdPeriodo2, IdPeriodo3, IdPeriodo4)
SELECT item, 0, 0, 0, 0 FROM dbo.FuncionDividirString(@ListaRUTs, ',')

UPDATE @PeriodosActivos SET IdPeriodo1 = BP.IdPeriodo
FROM @PeriodosActivos PA
INNER JOIN [dbo].[Clientes] C ON C.[RUTCliente] = PA.RUT
INNER JOIN [dbo].[Balances] B ON B.[IdCliente] = C.IdCliente
INNER JOIN [dbo].[BalancePeriodo] BP ON BP.[IdBalance] = B.[IdBalance]
WHERE BP.IdCalidad = (SELECT MAX(IdCalidad) FROM [dbo].[BalancePeriodo] WHERE [IdPeriodo] = BP.IdPeriodo AND IdBalance = BP.IdBalance)
AND BP.IdEstado = @IdEstado AND BP.Periodo = @Per1 AND B.[IdTipoBalance] = @IdTipoBalance
AND BP.Meses = @CantidadMeses1

UPDATE @PeriodosActivos SET IdPeriodo2 = BP.IdPeriodo
FROM @PeriodosActivos PA
INNER JOIN [dbo].[Clientes] C ON C.[RUTCliente] = PA.RUT
INNER JOIN [dbo].[Balances] B ON B.[IdCliente] = C.IdCliente
INNER JOIN [dbo].[BalancePeriodo] BP ON BP.[IdBalance] = B.[IdBalance]
WHERE BP.IdCalidad = (SELECT MAX(IdCalidad) FROM [dbo].[BalancePeriodo] WHERE [IdPeriodo] = BP.IdPeriodo AND IdBalance = BP.IdBalance)
AND BP.IdEstado = @IdEstado AND BP.Periodo = @Per2 AND B.[IdTipoBalance] = @IdTipoBalance
AND BP.Meses = @CantidadMeses2

UPDATE @PeriodosActivos SET IdPeriodo3 = BP.IdPeriodo
FROM @PeriodosActivos PA
INNER JOIN [dbo].[Clientes] C ON C.[RUTCliente] = PA.RUT
INNER JOIN [dbo].[Balances] B ON B.[IdCliente] = C.IdCliente
INNER JOIN [dbo].[BalancePeriodo] BP ON BP.[IdBalance] = B.[IdBalance]
WHERE BP.IdCalidad = (SELECT MAX(IdCalidad) FROM [dbo].[BalancePeriodo] WHERE [IdPeriodo] = BP.IdPeriodo AND IdBalance = BP.IdBalance)
AND BP.IdEstado = @IdEstado AND BP.Periodo = @Per3 AND B.[IdTipoBalance] = @IdTipoBalance
AND BP.Meses = @CantidadMeses3

UPDATE @PeriodosActivos SET IdPeriodo4 = BP.IdPeriodo
FROM @PeriodosActivos PA
INNER JOIN [dbo].[Clientes] C ON C.[RUTCliente] = PA.RUT
INNER JOIN [dbo].[Balances] B ON B.[IdCliente] = C.IdCliente
INNER JOIN [dbo].[BalancePeriodo] BP ON BP.[IdBalance] = B.[IdBalance]
WHERE BP.IdCalidad = (SELECT MAX(IdCalidad) FROM [dbo].[BalancePeriodo] WHERE [IdPeriodo] = BP.IdPeriodo AND IdBalance = BP.IdBalance)
AND BP.IdEstado = @IdEstado AND BP.Periodo = @Per4 AND B.[IdTipoBalance] = @IdTipoBalance
AND BP.Meses = @CantidadMeses4

SELECT * FROM @PeriodosActivos

END

GO
/****** Object:  StoredProcedure [dbo].[ObtenerRutsPeriodosCombinados]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtenerRutsPeriodosCombinados]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ObtenerRutsPeriodosCombinados] AS' 
END
GO
ALTER PROCEDURE [dbo].[ObtenerRutsPeriodosCombinados]
@Per1 INT,
@Per2 INT,
@Per3 INT,
@Per4 INT
AS
BEGIN

/*
	exec dbo.ObtenerRutsPeriodosCombinados 1134, 1135, 1136, NULL
*/

DECLARE @PeriodosActivos TABLE
(
	RUT NVARCHAR(10),
	Periodo1 BIT NULL,
	Periodo2 BIT NULL,
	Periodo3 BIT NULL,
	Periodo4 BIT NULL
)
DECLARE @PeriodosActivosFinal TABLE
(
	RUT NVARCHAR(10),
	Periodo1 BIT NULL,
	Periodo2 BIT NULL,
	Periodo3 BIT NULL,
	Periodo4 BIT NULL
)

DECLARE @ListaRuts1 NVARCHAR(100)
DECLARE @ListaRuts2 NVARCHAR(100)
DECLARE @ListaRuts3 NVARCHAR(100)
DECLARE @ListaRuts4 NVARCHAR(100)

SET @ListaRuts1 = (SELECT [Clientes] FROM [dbo].[BalancePeriodo] WHERE IdPeriodo = @Per1)
SET @ListaRuts2 = (SELECT [Clientes] FROM [dbo].[BalancePeriodo] WHERE IdPeriodo = @Per2)
SET @ListaRuts3 = (SELECT [Clientes] FROM [dbo].[BalancePeriodo] WHERE IdPeriodo = @Per3)
SET @ListaRuts4 = (SELECT [Clientes] FROM [dbo].[BalancePeriodo] WHERE IdPeriodo = @Per4)

INSERT INTO @PeriodosActivos (RUT, Periodo1, Periodo2, Periodo3, Periodo4)
SELECT item, 0, 0, 0, 0 FROM dbo.FuncionDividirString(@ListaRuts1, ',')
INSERT INTO @PeriodosActivos (RUT, Periodo1, Periodo2, Periodo3, Periodo4)
SELECT item, 0, 0, 0, 0 FROM dbo.FuncionDividirString(@ListaRuts2, ',')
INSERT INTO @PeriodosActivos (RUT, Periodo1, Periodo2, Periodo3, Periodo4)
SELECT item, 0, 0, 0, 0 FROM dbo.FuncionDividirString(@ListaRuts3, ',')
INSERT INTO @PeriodosActivos (RUT, Periodo1, Periodo2, Periodo3, Periodo4)
SELECT item, 0, 0, 0, 0 FROM dbo.FuncionDividirString(@ListaRuts4, ',')

INSERT INTO @PeriodosActivosFinal
SELECT DISTINCT RUT, Periodo1, Periodo2, Periodo3, Periodo4 FROM @PeriodosActivos

UPDATE @PeriodosActivosFinal SET Periodo1 = 1
FROM
@PeriodosActivosFinal PF
INNER JOIN dbo.FuncionDividirString(@ListaRuts1, ',') F ON F.item = PF.RUT

UPDATE @PeriodosActivosFinal SET Periodo2 = 1
FROM
@PeriodosActivosFinal PF
INNER JOIN dbo.FuncionDividirString(@ListaRuts2, ',') F ON F.item = PF.RUT

UPDATE @PeriodosActivosFinal SET Periodo3 = 1
FROM
@PeriodosActivosFinal PF
INNER JOIN dbo.FuncionDividirString(@ListaRuts3, ',') F ON F.item = PF.RUT

UPDATE @PeriodosActivosFinal SET Periodo4 = 1
FROM
@PeriodosActivosFinal PF
INNER JOIN dbo.FuncionDividirString(@ListaRuts4, ',') F ON F.item = PF.RUT

SELECT * FROM @PeriodosActivosFinal

END

GO
/****** Object:  StoredProcedure [dbo].[ObtieneAnalistas]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtieneAnalistas]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ObtieneAnalistas] AS' 
END
GO
ALTER PROCEDURE [dbo].[ObtieneAnalistas]
AS
BEGIN

	SELECT [IdAnalista], [NombreCompleto], [UsuarioNT] FROM [dbo].[Analistas]

END


GO
/****** Object:  StoredProcedure [dbo].[ObtieneClientePorIdRUT]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtieneClientePorIdRUT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ObtieneClientePorIdRUT] AS' 
END
GO
ALTER PROCEDURE [dbo].[ObtieneClientePorIdRUT]
@IdCliente INT,
@RUTCliente NVARCHAR(10)
AS
BEGIN

	SELECT C.[IdCliente], C.[RUTCliente], C.[NombreCompleto], C.[RazonSocial], C.[Giro], C.[CodActivo], C.[Segmento], C.[CRD], C.[VE], C.[ClienteDesde]
	, B.[IdBalance],  B.[FormatoMoneda], M.[IdMoneda], M.[Moneda], M.[Simbolo], TB.[IdTipoBalance]
	FROM [dbo].[Clientes] C
	LEFT JOIN [dbo].[Balances] B ON B.IdCliente = C.IdCliente
	LEFT JOIN [dbo].[TipoBalance] TB ON B.IdTipoBalance = TB.IdTipoBalance
	LEFT JOIN [dbo].[Monedas] M ON M.IdMoneda = B.IdMoneda
	WHERE C.[IdCliente] = CASE WHEN @IdCliente IS NULL THEN C.[IdCliente] ELSE @IdCliente END 
	AND  C.[RUTCliente] = CASE WHEN @RUTCliente IS NULL THEN C.[RUTCliente] ELSE @RUTCliente END 
END


GO
/****** Object:  StoredProcedure [dbo].[ObtieneClientes]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtieneClientes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ObtieneClientes] AS' 
END
GO
ALTER PROCEDURE [dbo].[ObtieneClientes]
AS
BEGIN

	SELECT [IdCliente], [RUTCliente], [NombreCompleto], [RazonSocial], [Giro], [CodActivo], [Ejecutivo], [Segmento], [CRD], [VE], [ClienteDesde] FROM [dbo].[Clientes]

END


GO
/****** Object:  StoredProcedure [dbo].[ObtieneEstadosBalance]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtieneEstadosBalance]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ObtieneEstadosBalance] AS' 
END
GO
ALTER PROCEDURE [dbo].[ObtieneEstadosBalance]
AS
BEGIN

	SELECT [IdEstado], [Estado] FROM [dbo].[Estados]

END


GO
/****** Object:  StoredProcedure [dbo].[ObtieneMonedas]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtieneMonedas]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ObtieneMonedas] AS' 
END
GO
ALTER PROCEDURE [dbo].[ObtieneMonedas]
AS
BEGIN

	SELECT [IdMoneda], [Moneda], [Simbolo] FROM [dbo].[Monedas]

END


GO
/****** Object:  StoredProcedure [dbo].[ObtieneTipoBalances]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtieneTipoBalances]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ObtieneTipoBalances] AS' 
END
GO
ALTER PROCEDURE [dbo].[ObtieneTipoBalances]

AS
BEGIN

	SELECT [IdTipoBalance], [TipoBalance] FROM [dbo].[TipoBalance]

END


GO
/****** Object:  StoredProcedure [dbo].[ObtieneTipoCalidad]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtieneTipoCalidad]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ObtieneTipoCalidad] AS' 
END
GO
ALTER PROCEDURE [dbo].[ObtieneTipoCalidad]

AS
BEGIN

	SELECT [IdCalidad],[Calidad] FROM [dbo].[TipoCalidad]

END


GO
/****** Object:  StoredProcedure [dbo].[ObtieneTipoConceptos]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtieneTipoConceptos]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ObtieneTipoConceptos] AS' 
END
GO
ALTER PROCEDURE [dbo].[ObtieneTipoConceptos]

AS
BEGIN

	SELECT [IdTipoConcepto], [TipoConcepto] FROM [dbo].[TipoConceptos]

END


GO
/****** Object:  StoredProcedure [dbo].[ObtieneVeCliente]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ObtieneVeCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ObtieneVeCliente] AS' 
END
GO
ALTER PROCEDURE [dbo].[ObtieneVeCliente]
	@RUTCliente NVARCHAR(10)
AS
BEGIN
	--SP: bbilbao.pr_bitacora_obtiene_infoCliente
	--PR: RUT VARCHAR(10) - Se debe rellenar con ceros a la izquierda
	SELECT '1' AS 'VE'
END


GO
/****** Object:  StoredProcedure [dbo].[ReporteBalanceDetalles]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteBalanceDetalles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ReporteBalanceDetalles] AS' 
END
GO
ALTER PROCEDURE [dbo].[ReporteBalanceDetalles]
@RutCliente NVARCHAR(10),
@Periodo NVARCHAR(10),
@IdEstado TINYINT,
@IdTipoBalance TINYINT
AS
BEGIN

	SET @RutCliente = REPLACE(@RutCliente,'-','')
	SET @RutCliente = REPLACE(@RutCliente,' ','')

	DECLARE @IdBalance INT, @IdCliente INT
	DECLARE @IdPeriodo INT = NULL

	SET @IdCliente = (SELECT IdCliente FROM [dbo].[Clientes] Where [RUTCliente] = @RutCliente)
	SET @IdBalance = (SELECT B.IdBalance FROM [dbo].[Balances] B WHERE B.[IdCliente] = @IdCliente AND [IdTipoBalance] = @IdTipoBalance)

	PRINT 'IdCliente: ' + CAST(@IdCliente AS VARCHAR(10))
	PRINT 'IdBalance: ' + CAST (@IdBalance AS VARCHAR(10))

	DECLARE @IdCalidad TINYINT
	SET @Periodo = (SELECT dbo.FormatearFechaCierre(@Periodo))
	SET @IdCalidad = (SELECT MAX(IdCalidad) FROM [dbo].[BalancePeriodo] WHERE IdBalance = @IdBalance AND [Periodo] = CAST(@Periodo AS INT) AND IdEstado=@IdEstado)
	SET @IdPeriodo = (SELECT IdPeriodo FROM [dbo].[BalancePeriodo] WHERE IdBalance = @IdBalance AND [Periodo] = CAST(@Periodo AS INT) AND IdCalidad=IdCalidad AND IdEstado=@IdEstado)

	PRINT 'Periodo: ' + CAST(@Periodo AS VARCHAR(8))  + '. | IdPeriodo: ' + CAST(ISNULL(@IdPeriodo,0) AS VARCHAR(10)) + '.'
	PRINT 'RUT Cliente: ' + @RutCliente + '.'

	SELECT BD.[IdPeriodo], BD.[IdConcepto], CT.Concepto, CG.IdGrupo, CG.NombreSubGrupo, TG.IdTipoGrupo, TG.NombreTipoGrupo, BD.[FechaCierre], BD.[Monto], BD.[MontoVisible],BD.[Descripcion], BD.[Comentario]
	FROM [dbo].[BalanceDetalle] BD
	INNER JOIN [dbo].[Conceptos] CT ON CT.IdConcepto = BD.IdConcepto AND CT.IdTipoBalance=@IdTipoBalance
	INNER JOIN [dbo].[ConceptosGrupos] CG ON CG.IdGrupo = CT.IdGrupo
	INNER JOIN [dbo].[TipoGrupos] TG ON TG.IdTipoGrupo = CG.IdTipoGrupo
	WHERE BD.IdPeriodo = @IdPeriodo
	ORDER BY BD.[IdConcepto] ASC

END


GO
/****** Object:  StoredProcedure [dbo].[ReporteBalanceDetallesMultiples]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteBalanceDetallesMultiples]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ReporteBalanceDetallesMultiples] AS' 
END
GO
ALTER PROCEDURE [dbo].[ReporteBalanceDetallesMultiples]
@RutCliente NVARCHAR(10),
@Periodo1 NVARCHAR(10),
@Periodo2 NVARCHAR(10),
@Periodo3 NVARCHAR(10),
@Periodo4 NVARCHAR(10),
@IdEstado TINYINT,
@IdTipoBalance TINYINT
AS
BEGIN
/*
	DECLARE @RutCliente NVARCHAR(10), @Periodo1 NVARCHAR(10), @Periodo2 NVARCHAR(10), @Periodo3 NVARCHAR(10), @Periodo4 NVARCHAR(10), @IdCalidad TINYINT, @IdEstado TINYINT, @IdTipoBalance TINYINT
	SET @RutCliente = '240868644'; SET @Periodo1='31-12-2013'; SET @Periodo2='31-12-2014'; SET @Periodo3='31-12-2015'; SET @Periodo4='12-12-2010'
	SET @IdCalidad = 1; SET @IdEstado = 2; SET @IdTipoBalance = 1
	EXEC dbo.ReporteBalanceDetallesMultiples @RutCliente, @Periodo1, @Periodo2, @Periodo3, @Periodo4, @IdCalidad, @IdEstado, @IdTipoBalance
*/
	DECLARE @ReporteDetalle TABLE
	(
		IDConcepto INT,
		IdInterno INT NULL, 
		Concepto NVARCHAR(250),
		ConceptoFormato NVARCHAR(100),
		IdGrupo SMALLINT,
		NombreSubGrupo NVARCHAR(100),
		IdTipoGrupo SMALLINT,
		NombreTipoGrupo NVARCHAR(100),
		Periodo1 INT NULL,
		Monto1 FLOAT  NULL,
		MontoVisible1 NVARCHAR(50)  NULL,
		Descripcion1 NVARCHAR(100)  NULL,
		Comentario1 TEXT  NULL,
		Periodo2 INT  NULL,
		Monto2 FLOAT  NULL,
		MontoVisible2 NVARCHAR(50)  NULL,
		Descripcion2 NVARCHAR(100)  NULL,
		Comentario2 TEXT  NULL,
		Periodo3 INT  NULL,
		Monto3 FLOAT  NULL,
		MontoVisible3 NVARCHAR(50)  NULL,
		Descripcion3 NVARCHAR(100)  NULL,
		Comentario3 TEXT  NULL,
		Periodo4 INT   NULL,
		Monto4 FLOAT	NULL,
		MontoVisible4 NVARCHAR(50)  NULL,
		Descripcion4 NVARCHAR(100)   NULL,
		Comentario4 TEXT   NULL
	)

	SET @RutCliente = REPLACE(@RutCliente,'-','')
	SET @RutCliente = REPLACE(@RutCliente,' ','')
	PRINT 'RUT Cliente: ' + @RutCliente + '.'

	DECLARE @IdBalance INT, @IdCliente INT
	DECLARE @IdPeriodo1 INT = NULL, @IdPeriodo2 INT = NULL, @IdPeriodo3 INT = NULL, @IdPeriodo4 INT = NULL;
	DECLARE @IdCalidad1 INT = NULL, @IdCalidad2 INT = NULL, @IdCalidad3 INT = NULL, @IdCalidad4 INT = NULL;

	SET @IdCliente = (SELECT IdCliente FROM [dbo].[Clientes] Where [RUTCliente] = @RutCliente)
	SET @IdBalance = (SELECT B.IdBalance FROM [dbo].[Balances] B WHERE B.[IdCliente] = @IdCliente AND [IdTipoBalance] = @IdTipoBalance)

	PRINT 'IdCliente: ' + CAST(@IdCliente AS VARCHAR(10))
	PRINT 'IdBalance: ' + CAST (@IdBalance AS VARCHAR(10))
	
	SET @Periodo1 = (SELECT dbo.FormatearFechaCierre(@Periodo1))
	SET @Periodo2 = (SELECT dbo.FormatearFechaCierre(@Periodo2))
	SET @Periodo3 = (SELECT dbo.FormatearFechaCierre(@Periodo3))
	SET @Periodo4 = (SELECT dbo.FormatearFechaCierre(@Periodo4))

	SET @IdCalidad1 = (SELECT MAX(IdCalidad) FROM [dbo].[BalancePeriodo] WHERE IdBalance = @IdBalance AND [Periodo] = CAST(@Periodo1 AS INT) AND IdEstado=@IdEstado)
	SET @IdCalidad2 = (SELECT MAX(IdCalidad) FROM [dbo].[BalancePeriodo] WHERE IdBalance = @IdBalance AND [Periodo] = CAST(@Periodo2 AS INT) AND IdEstado=@IdEstado)
	SET @IdCalidad3 = (SELECT MAX(IdCalidad) FROM [dbo].[BalancePeriodo] WHERE IdBalance = @IdBalance AND [Periodo] = CAST(@Periodo3 AS INT) AND IdEstado=@IdEstado)
	SET @IdCalidad4 = (SELECT MAX(IdCalidad) FROM [dbo].[BalancePeriodo] WHERE IdBalance = @IdBalance AND [Periodo] = CAST(@Periodo4 AS INT) AND IdEstado=@IdEstado)

	
	SET @IdPeriodo1 = (SELECT IdPeriodo FROM [dbo].[BalancePeriodo] WHERE IdBalance = @IdBalance AND [Periodo] = CAST(@Periodo1 AS INT) AND IdCalidad=@IdCalidad1 AND IdEstado=@IdEstado)
	
	SET @IdPeriodo2 = (SELECT IdPeriodo FROM [dbo].[BalancePeriodo] WHERE IdBalance = @IdBalance AND [Periodo] = CAST(@Periodo2 AS INT) AND IdCalidad=@IdCalidad2 AND IdEstado=@IdEstado)
	
	SET @IdPeriodo3 = (SELECT IdPeriodo FROM [dbo].[BalancePeriodo] WHERE IdBalance = @IdBalance AND [Periodo] = CAST(@Periodo3 AS INT) AND IdCalidad=@IdCalidad3 AND IdEstado=@IdEstado)
	
	SET @IdPeriodo4 = (SELECT IdPeriodo FROM [dbo].[BalancePeriodo] WHERE IdBalance = @IdBalance AND [Periodo] = CAST(@Periodo4 AS INT) AND IdCalidad=@IdCalidad4 AND IdEstado=@IdEstado)

	PRINT 'IdPeriodo1: ' + CAST(@IdPeriodo1 AS NVARCHAR(10)) + 'IdPeriodo2: ' + CAST(@IdPeriodo2 AS NVARCHAR(10)) + 'IdPeriodo3: ' + CAST(@IdPeriodo3 AS NVARCHAR(10)) + 'IdPeriodo4: ' + CAST(@IdPeriodo4 AS NVARCHAR(10))

	INSERT INTO @ReporteDetalle (IDConcepto, IdInterno, Concepto,ConceptoFormato,IdGrupo,NombreSubGrupo,IdTipoGrupo,NombreTipoGrupo,Periodo1,Monto1,Descripcion1,Comentario1,Periodo2,Monto2,Descripcion2,Comentario2,Periodo3,Monto3,Descripcion3,Comentario3,Periodo4,Monto4,Descripcion4,Comentario4)
	SELECT CT.[IdConcepto], CT.IdInterno, CT.Concepto, CT.ConceptoFormato, CG.IdGrupo, CG.NombreSubGrupo, TG.IdTipoGrupo, TG.NombreTipoGrupo, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
	FROM [dbo].[Conceptos] CT
	INNER JOIN [dbo].[ConceptosGrupos] CG ON CG.IdGrupo = CT.IdGrupo
	INNER JOIN [dbo].[TipoGrupos] TG ON TG.IdTipoGrupo = CG.IdTipoGrupo
	WHERE CT.IdTipoBalance = @IdTipoBalance

	UPDATE @ReporteDetalle SET Periodo1 = BD.FechaCierre, Monto1 = BD.Monto, MontoVisible1 = BD.MontoVisible, Descripcion1 = BD.Descripcion, Comentario1 = BD.Comentario
	FROM @ReporteDetalle R 
	INNER JOIN [dbo].[BalanceDetalle] BD ON R.IDConcepto = BD.IdConcepto
	WHERE BD.IdPeriodo = @IdPeriodo1

	UPDATE @ReporteDetalle SET Periodo2 = BD.FechaCierre, Monto2 = BD.Monto, MontoVisible2 = BD.MontoVisible, Descripcion2 = BD.Descripcion, Comentario2 = BD.Comentario
	FROM @ReporteDetalle R 
	INNER JOIN [dbo].[BalanceDetalle] BD ON R.IDConcepto = BD.IdConcepto
	WHERE BD.IdPeriodo = @IdPeriodo2

	UPDATE @ReporteDetalle SET Periodo3 = BD.FechaCierre, Monto3 = BD.Monto, MontoVisible3 = BD.MontoVisible, Descripcion3 = BD.Descripcion, Comentario3 = BD.Comentario
	FROM @ReporteDetalle R 
	INNER JOIN [dbo].[BalanceDetalle] BD ON R.IDConcepto = BD.IdConcepto
	WHERE BD.IdPeriodo = @IdPeriodo3

	UPDATE @ReporteDetalle SET Periodo4 = BD.FechaCierre, Monto4 = BD.Monto, MontoVisible4 = BD.MontoVisible, Descripcion4 = BD.Descripcion, Comentario4 = BD.Comentario
	FROM @ReporteDetalle R 
	INNER JOIN [dbo].[BalanceDetalle] BD ON R.IDConcepto = BD.IdConcepto
	WHERE BD.IdPeriodo = @IdPeriodo4

	SELECT IDConcepto,IdInterno,Concepto,ConceptoFormato,IdGrupo,NombreSubGrupo,IdTipoGrupo,NombreTipoGrupo,Periodo1,Monto1,MontoVisible1,Descripcion1,Comentario1,Periodo2,Monto2,MontoVisible2,Descripcion2,Comentario2,Periodo3,Monto3,MontoVisible3,Descripcion3,Comentario3,Periodo4,Monto4,MontoVisible4,Descripcion4,Comentario4 FROM @ReporteDetalle
END



GO
/****** Object:  StoredProcedure [dbo].[ReporteBalanceIndividualCabecera]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteBalanceIndividualCabecera]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ReporteBalanceIndividualCabecera] AS' 
END
GO
ALTER PROCEDURE [dbo].[ReporteBalanceIndividualCabecera]
@RutCliente NVARCHAR(10),
@IdTipoBalance TINYINT
AS
BEGIN

	SET @RutCliente = REPLACE(@RutCliente,'-','')
	SET @RutCliente = REPLACE(@RutCliente,' ','')

	DECLARE @IdBalance INT, @IdCliente INT

	SET @IdCliente = (SELECT IdCliente FROM [dbo].[Clientes] Where [RUTCliente] = @RutCliente)
	SET @IdBalance = (SELECT B.IdBalance FROM [dbo].[Balances] B WHERE B.[IdCliente] = @IdCliente AND [IdTipoBalance] = @IdTipoBalance)

	PRINT 'RUT Cliente: ' + @RutCliente + ' | IdCliente: ' + CAST(@IdCliente AS VARCHAR(10)) 

	SELECT B.[IdBalance], B.[IdCliente], C.[RUTCliente], C.[NombreCompleto], C.[RazonSocial], B.[Ejecutivo], C.[Giro], C.[CodActivo], C.[Segmento], C.[CRD]
	,C.[VE], M.[IdMoneda], M.[Moneda], M.[Simbolo], B.[FormatoMoneda], B.[IdTipoBalance], TB.[TipoBalance], C.[ClienteDesde]
	FROM [dbo].[Balances] B
	INNER JOIN [dbo].[Clientes] C ON C.IdCliente = B.IdCliente
	INNER JOIN [dbo].[Monedas] M ON M.IdMoneda = B.IdMoneda
	INNER JOIN [dbo].[TipoBalance] TB ON TB.IdTipoBalance = B.IdTipoBalance
	WHERE C.[RUTCliente] = @RUTCliente
	AND B.IdTipoBalance = @IdTipoBalance

END


GO
/****** Object:  StoredProcedure [dbo].[ReporteBalanceIndividualPorPeriodoCabecera]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteBalanceIndividualPorPeriodoCabecera]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ReporteBalanceIndividualPorPeriodoCabecera] AS' 
END
GO
ALTER PROCEDURE [dbo].[ReporteBalanceIndividualPorPeriodoCabecera]
@RutCliente NVARCHAR(10),
@Periodo NVARCHAR(10),
@IdEstado TINYINT,
@IdTipoBalance TINYINT,
@UsuarioNT NVARCHAR(50)
AS
BEGIN

SET NOCOUNT OFF
	
	SET @RutCliente = REPLACE(@RutCliente,'-','')
	SET @RutCliente = REPLACE(@RutCliente,' ','')

	DECLARE @IdBalance INT, @IdCliente INT, @IdCalidad TINYINT
	DECLARE @IdPeriodo INT = NULL

	SET @IdCliente = (SELECT IdCliente FROM [dbo].[Clientes] Where [RUTCliente] = @RutCliente)
	SET @IdBalance = (SELECT B.IdBalance FROM [dbo].[Balances] B WHERE B.[IdCliente] = @IdCliente AND [IdTipoBalance] = @IdTipoBalance)

	SET @Periodo = (SELECT dbo.FormatearFechaCierre(@Periodo))
	SET @IdCalidad = (SELECT MAX(IdCalidad) FROM [dbo].[BalancePeriodo] WHERE IdBalance = @IdBalance AND [Periodo] = CAST(@Periodo AS INT) AND IdEstado=@IdEstado)
	SET @IdPeriodo = (SELECT IdPeriodo FROM [dbo].[BalancePeriodo] WHERE IdBalance = @IdBalance AND [Periodo] = CAST(@Periodo AS INT) AND IdCalidad=@IdCalidad AND IdEstado=@IdEstado)

	PRINT 'Periodo1: ' + CAST(ISNULL(@IdPeriodo,0) AS VARCHAR(10)) + '.'
	PRINT 'RUT Cliente: ' + @RutCliente + '.'

	DECLARE @DatosXML XML
	SET @DatosXML = '<Datos>
						<IdBalance>'+CONVERT(NVARCHAR,ISNULL(@IdBalance,0))+'</IdBalance>
						<IdPeriodo>'+CONVERT(NVARCHAR,ISNULL(@IdPeriodo,0))+'</IdPeriodo>
						<Periodo>'+CONVERT(NVARCHAR,ISNULL(@Periodo,'---'))+'</Periodo>
						<IdTipoBalance>'+CONVERT(NVARCHAR,ISNULL(@IdTipoBalance,0))+'</IdTipoBalance>
						<IdCalidad>'+CONVERT(NVARCHAR,ISNULL(@IdCalidad,0))+'</IdCalidad>
						<IdEstado>'+CONVERT(NVARCHAR,ISNULL(@IdEstado,0))+'</IdEstado>
					</Datos>'
	exec [dbo].[InsertarLog] @IdTipoBalance, 15, 2, @UsuarioNT, 1, @DatosXML
SET NOCOUNT ON	

	SELECT BP.IdPeriodo, BP.IdBalance, B.IdCliente, B.IdTipoBalance, TB.TipoBalance, BP.Periodo, BP.Meses, BP.IdEstado, E.Estado, BP.IdCalidad, TC.Calidad, M.IdMoneda, M.Moneda
	,B.FormatoMoneda, B.Ejecutivo, BP.IdAnalista, A.NombreCompleto As NombreAnalista, BP.CantidadEmpresas, BP.Clientes
	FROM [dbo].[Balances] B
	INNER JOIN [dbo].[Clientes] C ON C.IdCliente = B.IdCliente
	INNER JOIN [dbo].[BalancePeriodo] BP ON B.IdBalance = BP.IdBalance
	INNER JOIN [dbo].[Monedas] M ON M.IdMoneda = B.IdMoneda
	INNER JOIN [dbo].[Estados] E ON E.IdEstado = BP.IdEstado
	INNER JOIN [dbo].[TipoCalidad] TC ON TC.IdCalidad = BP.IdCalidad
	INNER JOIN [dbo].[TipoBalance] TB ON TB.IdTipoBalance = B.IdTipoBalance
	INNER JOIN [dbo].[Analistas] A ON A.IdAnalista = BP.IdAnalista
	WHERE C.[RUTCliente] = @RUTCliente
	AND BP.IdPeriodo = @IdPeriodo

END



GO
/****** Object:  StoredProcedure [dbo].[ReporteBalanceObtenerComentarios]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteBalanceObtenerComentarios]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ReporteBalanceObtenerComentarios] AS' 
END
GO
ALTER PROCEDURE [dbo].[ReporteBalanceObtenerComentarios]
@RutCliente NVARCHAR(10),
@Periodo1 NVARCHAR(10),
@Periodo2 NVARCHAR(10),
@Periodo3 NVARCHAR(10),
@Periodo4 NVARCHAR(10),
@IdEstado TINYINT,
@IdTipoBalance TINYINT
AS
BEGIN
/*
	DECLARE @RutCliente NVARCHAR(10), @Periodo1 NVARCHAR(10), @Periodo2 NVARCHAR(10), @Periodo3 NVARCHAR(10), @Periodo4 NVARCHAR(10), @IdCalidad TINYINT, @IdEstado TINYINT, @IdTipoBalance TINYINT
	SET @RutCliente = '910210009'; SET @Periodo1='31-12-2010'; SET @Periodo2='31-12-2011'; SET @Periodo3='31-12-2012'; SET @Periodo4='31-12-2013'
	SET @IdCalidad = 2; SET @IdEstado = 2; SET @IdTipoBalance = 1
	EXEC dbo.ReporteBalanceObtenerComentarios @RutCliente, @Periodo1, @Periodo2, @Periodo3, @Periodo4, @IdEstado, @IdTipoBalance
*/
	DECLARE @ReporteDetalle TABLE
	(
		IDConcepto INT NULL,
		IdInterno INT NULL, 
		Concepto NVARCHAR(250) NULL,
		ConceptoFormato NVARCHAR(100) NULL,
		IdGrupo SMALLINT NULL,
		NombreSubGrupo NVARCHAR(100) NULL,
		IdTipoGrupo SMALLINT NULL,
		NombreTipoGrupo NVARCHAR(100) NULL,
		Periodo INT NULL,
		Monto FLOAT  NULL,
		Descripcion NVARCHAR(100)  NULL,
		Comentario TEXT  NULL
	)

	SET @RutCliente = REPLACE(@RutCliente,'-','')
	SET @RutCliente = REPLACE(@RutCliente,' ','')
	PRINT 'RUT Cliente: ' + @RutCliente + '.'

	DECLARE @IdBalance INT, @IdCliente INT, @IdCalidad1 TINYINT, @IdCalidad2 TINYINT, @IdCalidad3 TINYINT, @IdCalidad4 TINYINT
	DECLARE @IdPeriodo1 INT = NULL, @IdPeriodo2 INT = NULL, @IdPeriodo3 INT = NULL, @IdPeriodo4 INT = NULL;

	SET @IdCliente = (SELECT IdCliente FROM [dbo].[Clientes] Where [RUTCliente] = @RutCliente)
	SET @IdBalance = (SELECT B.IdBalance FROM [dbo].[Balances] B WHERE B.[IdCliente] = @IdCliente AND [IdTipoBalance] = @IdTipoBalance)

	PRINT 'IdCliente: ' + CAST(@IdCliente AS VARCHAR(10))
	PRINT 'IdBalance: ' + CAST (@IdBalance AS VARCHAR(10))

	SET @Periodo1 = (SELECT dbo.FormatearFechaCierre(@Periodo1))
	SET @IdCalidad1 = (SELECT MAX(IdCalidad) FROM [dbo].[BalancePeriodo] WHERE IdBalance = @IdBalance AND [Periodo] = CAST(@Periodo1 AS INT) AND IdEstado=@IdEstado)
	SET @IdPeriodo1 = (SELECT IdPeriodo FROM [dbo].[BalancePeriodo] WHERE IdBalance = @IdBalance AND [Periodo] = CAST(@Periodo1 AS INT) AND IdCalidad=@IdCalidad1 AND IdEstado=@IdEstado)
	SET @Periodo2 = (SELECT dbo.FormatearFechaCierre(@Periodo2))
	SET @IdCalidad2 = (SELECT MAX(IdCalidad) FROM [dbo].[BalancePeriodo] WHERE IdBalance = @IdBalance AND [Periodo] = CAST(@Periodo2 AS INT) AND IdEstado=@IdEstado)
	SET @IdPeriodo2 = (SELECT IdPeriodo FROM [dbo].[BalancePeriodo] WHERE IdBalance = @IdBalance AND [Periodo] = CAST(@Periodo2 AS INT) AND IdCalidad=@IdCalidad2 AND IdEstado=@IdEstado)
	SET @Periodo3 = (SELECT dbo.FormatearFechaCierre(@Periodo3))
	SET @IdCalidad3 = (SELECT MAX(IdCalidad) FROM [dbo].[BalancePeriodo] WHERE IdBalance = @IdBalance AND [Periodo] = CAST(@Periodo3 AS INT) AND IdEstado=@IdEstado)
	SET @IdPeriodo3 = (SELECT IdPeriodo FROM [dbo].[BalancePeriodo] WHERE IdBalance = @IdBalance AND [Periodo] = CAST(@Periodo3 AS INT) AND IdCalidad=@IdCalidad3 AND IdEstado=@IdEstado)
	SET @Periodo4 = (SELECT dbo.FormatearFechaCierre(@Periodo4))
	SET @IdCalidad4 = (SELECT MAX(IdCalidad) FROM [dbo].[BalancePeriodo] WHERE IdBalance = @IdBalance AND [Periodo] = CAST(@Periodo4 AS INT) AND IdEstado=@IdEstado)
	SET @IdPeriodo4 = (SELECT IdPeriodo FROM [dbo].[BalancePeriodo] WHERE IdBalance = @IdBalance AND [Periodo] = CAST(@Periodo4 AS INT) AND IdCalidad=@IdCalidad4 AND IdEstado=@IdEstado)

	PRINT 'IdPeriodo1: ' + CAST(ISNULL(@IdPeriodo1,'') AS NVARCHAR(10)) + ' | IdPeriodo2: ' + CAST(ISNULL(@IdPeriodo2,'') AS NVARCHAR(10)) + ' | IdPeriodo3: ' + CAST(ISNULL(@IdPeriodo3,'') AS NVARCHAR(10)) + ' | IdPeriodo4: ' + CAST(ISNULL(@IdPeriodo4,'') AS NVARCHAR(10))

	INSERT INTO @ReporteDetalle (IDConcepto, IdInterno, Concepto,ConceptoFormato,IdGrupo,NombreSubGrupo,IdTipoGrupo,NombreTipoGrupo,Periodo,Monto,Descripcion,Comentario)
	SELECT -10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, [Periodo], NULL, NULL, [Comentarios]
	FROM [dbo].[BalancePeriodo]
	WHERE [IdPeriodo] in (@IdPeriodo1,@IdPeriodo2,@IdPeriodo3,@IdPeriodo4) AND [IdBalance] = @IdBalance
	ORDER BY [Periodo] ASC

	INSERT INTO @ReporteDetalle (IDConcepto, IdInterno, Concepto,ConceptoFormato,IdGrupo,NombreSubGrupo,IdTipoGrupo,NombreTipoGrupo,Periodo,Monto,Descripcion,Comentario)
	SELECT CT.[IdConcepto], CT.IdInterno, CT.Concepto, CT.ConceptoFormato, CG.IdGrupo, CG.NombreSubGrupo, TG.IdTipoGrupo, TG.NombreTipoGrupo, BD.FechaCierre,  BD.Monto, BD.Descripcion, NULL
	FROM [dbo].[Conceptos] CT
	INNER JOIN [dbo].[ConceptosGrupos] CG ON CG.IdGrupo = CT.IdGrupo
	INNER JOIN [dbo].[TipoGrupos] TG ON TG.IdTipoGrupo = CG.IdTipoGrupo
	INNER JOIN [dbo].[BalanceDetalle] BD ON BD.IdConcepto = CT.IdConcepto AND BD.IdPeriodo IN (@IdPeriodo1,@IdPeriodo2,@IdPeriodo3,@IdPeriodo4)
	WHERE CT.IdTipoBalance = @IdTipoBalance AND DATALENGTH(BD.Comentario) <> 0

	UPDATE @ReporteDetalle SET Comentario = N'(A' + CAST(BD.IdConcepto AS NVARCHAR(5)) +') : ' + CAST(BD.Comentario AS NVARCHAR(MAX))
	FROM @ReporteDetalle R 
	INNER JOIN [dbo].[BalanceDetalle] BD ON R.IDConcepto = BD.IdConcepto AND BD.IdPeriodo = @IdPeriodo1
	WHERE R.Periodo = @Periodo1

	UPDATE @ReporteDetalle SET Comentario = N'(B' + CAST(BD.IdConcepto AS NVARCHAR(5)) +') : ' + CAST(BD.Comentario AS NVARCHAR(MAX))
	FROM @ReporteDetalle R 
	INNER JOIN [dbo].[BalanceDetalle] BD ON R.IDConcepto = BD.IdConcepto AND BD.IdPeriodo = @IdPeriodo2
	WHERE R.Periodo = @Periodo2

	UPDATE @ReporteDetalle SET Comentario = N'(C' + CAST(BD.IdConcepto AS NVARCHAR(5)) +') : ' + CAST(BD.Comentario AS NVARCHAR(MAX))
	FROM @ReporteDetalle R 
	INNER JOIN [dbo].[BalanceDetalle] BD ON R.IDConcepto = BD.IdConcepto AND BD.IdPeriodo = @IdPeriodo3
	WHERE R.Periodo = @Periodo3

	UPDATE @ReporteDetalle SET Comentario = N'(D' + CAST(BD.IdConcepto AS NVARCHAR(5))+') : ' + CAST(BD.Comentario AS NVARCHAR(MAX))
	FROM @ReporteDetalle R 
	INNER JOIN [dbo].[BalanceDetalle] BD ON R.IDConcepto = BD.IdConcepto AND BD.IdPeriodo = @IdPeriodo4
	WHERE R.Periodo = @Periodo4

	SELECT IDConcepto,IdInterno,Concepto,ConceptoFormato,IdGrupo,NombreSubGrupo,IdTipoGrupo,NombreTipoGrupo,Periodo,Monto,Descripcion,Comentario FROM @ReporteDetalle
END



GO
/****** Object:  StoredProcedure [dbo].[sp_alterdiagram]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_alterdiagram]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_alterdiagram] AS' 
END
GO

	ALTER PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_creatediagram]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_creatediagram]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_creatediagram] AS' 
END
GO

	ALTER PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_dropdiagram]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_dropdiagram]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_dropdiagram] AS' 
END
GO

	ALTER PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_helpdiagramdefinition]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagramdefinition]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition] AS' 
END
GO

	ALTER PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_helpdiagrams]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagrams]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_helpdiagrams] AS' 
END
GO

	ALTER PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_renamediagram]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_renamediagram]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_renamediagram] AS' 
END
GO

	ALTER PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_upgraddiagrams]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_upgraddiagrams]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_upgraddiagrams] AS' 
END
GO

	ALTER PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
	
GO
/****** Object:  StoredProcedure [dbo].[VerificaBalancesCombinadoPorIdPeriodo]    Script Date: 07-11-2016 19:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VerificaBalancesCombinadoPorIdPeriodo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[VerificaBalancesCombinadoPorIdPeriodo] AS' 
END
GO
ALTER PROCEDURE [dbo].[VerificaBalancesCombinadoPorIdPeriodo]
@IdPeriodo INT
AS
BEGIN

/*
	exec [dbo].[VerificaBalancesCombinadoPorIdPeriodo] 1131
*/

SELECT BP.IdBalance, BP.IdPeriodo, BP.Periodo, C.RUTCliente, BP.Meses FROM [dbo].[BalancePeriodo] BP
INNER JOIN [dbo].[Balances] B ON B.IdBalance = BP.IdBalance
INNER JOIN [dbo].[Clientes] C ON C.IdCliente = B.IdCliente
WHERE [PeriodosCombinados] like '%'+ CAST(@IdPeriodo AS NVARCHAR(20)) +'%'
AND B.IdTipoBalance = 3

END

GO
