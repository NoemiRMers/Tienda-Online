import java.util.Vector;

public class Cliente {

  protected Integer idCliente;

  protected String nombreCliente;

  protected String claveCliente;

  protected String emailCliente;

  protected String fechaNacCliente;

    /**
   * 
   * @element-type Producto
   */
  public Vector  compra;
    /**
   * 
   * @element-type Enlace
   */
  public Vector  accede;
    /**
   * 
   * @element-type Orden
   */
  public Vector  hace;

  public void Cliente() {
  }

  public Cliente(Integer idCliente, String nombreCliente, String claveCliente, String emailCliente, String fechaNacCliente) {
  }

  public void setIdCliente(Integer idCliente) {
  }

  public void getIdCliente() {
  }

  public void setNombreCliente(Integer nombreCliente) {
  }

  public void getNombreCliente() {
  }

  public void setClaveCliente(Integer claveCliente) {
  }

  public void getClaveCliente() {
  }

  public void setEmailCliente(Integer emailCliente) {
  }

  public void getEmailCliente() {
  }

  public void setFechaNacCliente(Integer fechaNacCliente) {
  }

  public void getFechaNacCliente() {
  }

  public void iniciarSesion(String emailCliente, String claveCliente) {
  }

  public void modificarPerfil(String emailCliente, String iniciarSesion) {
  }

}