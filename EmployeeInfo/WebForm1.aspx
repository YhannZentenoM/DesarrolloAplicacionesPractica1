<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EmployeeInfo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        p{
            font-weight: bold;
            margin-bottom: 1px;
        }
        span{
            font-size: 16px;
            color: red;
        }
        .contenedor {
            width: 80%;
            margin-right: auto;
            margin-left: auto;
            padding: 15px;
            background-color: #bfbfbf;
        }
        .input-group {
            padding: 5px 0;
        }
        input{
            border-radius: 8px;
            border: 2px solid #0900d3;
            height: 35px;
            width: 100%;
        }
        label {
            font-weight: bold;
            font-size: 16px;
            margin-bottom: 10px;
        }
        button {
            background-color: #0900d3;
            color: white;
            font-size: 20px;
            font-weight: bold;
            border: 1px solid #0900d3;
            padding: 8px 0;
            text-align: center;
            line-height: 1.5;
            border-radius: 10px;
            vertical-align: middle;
            display: inline-block;
            float: right;
        }
        .w100 {
            width: 100%;
        }
        .w50 {
            width: 49%;
        }
        .w20 {
            width: 31%;
        }
        .left{
            float: left;
        }
        .ml1{
            margin-left: 15px;
        }
        h1{
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="contenedor">
        <form id="form1" runat="server">
            <h1>DATOS DE PRESTATARIO</h1>
            <div class="w100">
                <div class="input-group w50 left">
                    <label>Nombres y Apellidos</label>
                    <input type="text" name="nombre" value="" />
                </div>
                <div class="input-group w50 left ml1">
                    <label>DNI</label>
                    <input type="text" name="dni" value="" />
                </div>
                <div class="input-group w50 left">
                    <label>Teléfono</label>
                    <input type="text" name="telefono" value="" />
                </div>
                <div class="input-group w50 left ml1">
                    <label>Dirección</label>
                    <input type="text" name="direccion" value="" />
                </div>
            </div>
            <h1>CALCULAR MONTOS</h1>
            <div class="w100">
                <div class="input-group w50 left">
                    <label>Cantidad prestamo*</label>
                    <asp:TextBox type="number" step="any" ID="prestamo" runat="server" BorderColor="Blue" BorderWidth="2px" Font-Bold="False"></asp:TextBox>
                </div>
                <div class="input-group w50 left ml1">
                    <label>Cuotas*</label>
                    <asp:TextBox type="number" step="any" ID="cuotas" runat="server" BorderColor="Blue" BorderWidth="2px" Font-Bold="False"></asp:TextBox>
                </div>
                <div class="input-group w20 left ml1">
                    <label>% Interes*</label>
                    <asp:TextBox type="number" step="any" ID="interes" runat="server" BorderColor="Blue" BorderWidth="2px" Font-Bold="False"></asp:TextBox>
                </div>
                <div class="input-group w20 left ml1">
                    <label>% comisión*</label>
                    <asp:TextBox type="number" step="any" ID="comision" runat="server" BorderColor="Blue" BorderWidth="2px" Font-Bold="False"></asp:TextBox>
                </div>
                <div class="input-group w20 left ml1">
                    <label>% seguros*</label>
                    <asp:TextBox type="number" step="any" ID="seguros" runat="server" BorderColor="Blue" BorderWidth="2px" Font-Bold="False"></asp:TextBox>
                </div>
            </div>
            <div class="w100">
                <asp:Label runat="server" Text="Cuota Mensual: " Font-Bold="True" ForeColor="Black"></asp:Label>
                <asp:Label ID="cuotaMensual" runat="server" Font-Bold="True" Font-Size="Large" Text=""></asp:Label>
                <br />
                <asp:Label runat="server" Text="Comisión: " Font-Bold="True" ForeColor="Black"></asp:Label>
                <asp:Label ID="pagoComision" runat="server" Font-Bold="True" Font-Size="Large" Text=""></asp:Label>
                <br />
                <asp:Label runat="server" Text="Seguro: " Font-Bold="True" ForeColor="Black"></asp:Label>
                <asp:Label ID="pagoSeguro" runat="server" Font-Bold="True" Font-Size="Large" Text=""></asp:Label>
            </div>
            <br />
            <asp:Label runat="server" Text="" Font-Bold="True" ForeColor="Red" ID="msjError"></asp:Label>
            <br />
            <asp:Button ID="Calcular" runat="server" Text="CALCULAR" BackColor="Blue" BorderColor="Blue" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" OnClick="Calcular_Click" />
        </form>
    </div>
</body>
</html>
