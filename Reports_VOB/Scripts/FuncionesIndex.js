/* ============================================================= */
/* Registrar funciones Jquery o Javascript que NO utilizen RAZOR */
/* ============================================================= */
var checkedIds = {};
var rowDataList = [];
//on click of the checkbox:
function selectRow() {
    var checked = this.checked,
    row = $(this).closest("tr"),
    grid = $("#grid").data("kendoGrid"),
    dataItem = grid.dataItem(row);

    checkedIds[dataItem.id] = checked;
    if (checked) {
        var rowCount = 0;
        $.each(checkedIds, function (index, value) {
            if (value == true) {
                rowCount++;
            }
        });
        if (rowCount <= 4) {
            //-select the row
            row.addClass("k-state-selected");
            //Al activar un periodo siempre habilitamos el boton generar reporte.
            $('#btnGeneraReporte').prop("disabled", false);
            $('#btnGeneraReporte').removeClass('disabled');

            rowDataList.push(dataItem);
            //console.log(JSON.stringify(rowDataList));
        }
        else {
            this.checked = false;
            checkedIds[dataItem.id] = false;
        }
    } else {
        //-remove selection
        row.removeClass("k-state-selected");
        //Al remover selecciones de periodos comprobamos si debemos activas/desactivar el boton generar report.
        var anyActive = false;
        $.each(checkedIds, function (index, value) {
            if (value == true) {
                anyActive = true;
            }
        });
        if (anyActive) {
            $('#btnGeneraReporte').prop("disabled", false);
            $('#btnGeneraReporte').removeClass('disabled');
        }
        else {
            $('#btnGeneraReporte').prop("disabled", true);
            $('#btnGeneraReporte').addClass('disabled');
        }

        var index = arrayObjectIndexOf(rowDataList, dataItem.id, 'id');
        if (index > -1) {
            rowDataList.splice(index, 1);
            //console.log(JSON.stringify(rowDataList));
        }
    }

    var ordered = {};

    var asc = true;
    var prop = 'Periodo';

    rowDataList = rowDataList.sort(function (a, b) {
        if (asc) {
            return (a[prop] > b[prop]) ? 1 : ((a[prop] < b[prop]) ? -1 : 0);
        } else {
            return (b[prop] > a[prop]) ? 1 : ((b[prop] < a[prop]) ? -1 : 0);
        }
    });

    $('#Periodo1').val('');
    $('#Periodo2').val('');
    $('#Periodo3').val('');
    $('#Periodo4').val('');
    $('#IdPeriodo1').val('');
    $('#IdPeriodo2').val('');
    $('#IdPeriodo3').val('');
    $('#IdPeriodo4').val('');

    console.log(JSON.stringify(rowDataList));

    $.each(rowDataList, function (index, item) {
        switch (index) {
            case 0:
                $('#Periodo1').val(FormatearPeriodo(item.Periodo));
                $('#IdPeriodo1').val(item.IdPeriodo)
                break;
            case 1:
                $('#Periodo2').val(FormatearPeriodo(item.Periodo));
                $('#IdPeriodo2').val(item.IdPeriodo)
                break;
            case 2:
                $('#Periodo3').val(FormatearPeriodo(item.Periodo));
                $('#IdPeriodo3').val(item.IdPeriodo)
                break;
            case 3:
                $('#Periodo4').val(FormatearPeriodo(item.Periodo));
                $('#IdPeriodo4').val(item.IdPeriodo)
                break;
        }
    });
}
function arrayObjectIndexOf(myArray, searchTerm, property) {
    for (var i = 0, len = myArray.length; i < len; i++) {
        if (myArray[i][property] === searchTerm) return i;
    }
    return -1;
}
function FormatearPeriodo(periodo) {
    var per = periodo.toString();
    var ano = per.substring(0, 4);
    var mes = per.substring(4, 6);
    var dia = per.substring(6);

    return dia + '-' + mes + '-' + ano;
}
//on dataBound event restore previous selected rows:
function onDataBound(e) {
    var view = this.dataSource.view();
    for (var i = 0; i < view.length; i++) {
        if (checkedIds[view[i].id]) {
            this.tbody.find("tr[data-uid='" + view[i].uid + "']")
            .addClass("k-state-selected")
            .find(".checkbox")
            .attr("checked", "checked");
        }
    }
}