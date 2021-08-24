using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeInfo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calcular_Click(object sender, EventArgs e)
        {
            //declaramos variables double para cada monto
            double prestamoTotal, porcinteres, totalCuota, porcseguro, porccomision, numCuotas;
            //comprobamos que los campos no esten vacios
            if (prestamo.Text != "" && !string.IsNullOrEmpty(interes.Text) && seguros.Text != "" && comision.Text != "" && cuotas.Text != "")
            {
                //Los textos ingresados en input los convertimos a double
                prestamoTotal = Convert.ToDouble(prestamo.Text);
                porcinteres = Convert.ToDouble(interes.Text);
                porcseguro = Convert.ToDouble(seguros.Text);
                porccomision = Convert.ToDouble(comision.Text);
                numCuotas = Convert.ToDouble(cuotas.Text);

                //calculamos la cuota total segun el monto e interes ingresado y dividimos entre las cuotas
                totalCuota = ((prestamoTotal * porcinteres) / 100) / numCuotas;
                totalCuota = (prestamoTotal / numCuotas) + totalCuota;

                //Calculamos la comision con una regla de tres y dividimos entre las cuotas
                double comisionCuota = ((prestamoTotal * porccomision) / 100) / numCuotas;

                //Calculamos el seguro con una regla de tres y dividimos entre las cuotas
                double seguroCuota = ((prestamoTotal * porcseguro) / 100) / numCuotas;

                //sumamos todos los montos finales
                totalCuota = totalCuota + comisionCuota + seguroCuota;

                //mostramos en pantalla los calculos finales
                cuotaMensual.Text = "S/" + Convert.ToString(Math.Round(totalCuota, 2));
                pagoComision.Text = "S/" + Convert.ToString(Math.Round(comisionCuota, 2)) + " incl. cuota";
                pagoSeguro.Text = "S/" + Convert.ToString(Math.Round(seguroCuota, 2)) + " incl. cuota";

                //limpiamos mensaje de error 
                msjError.Text = "";
            }
            else
            {
                //mostramos mensaje de error
                msjError.Text = "Debes ingresar los campos obligatorios";
            }      
        }
    }
}