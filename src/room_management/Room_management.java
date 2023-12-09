package room_management;

/**
 *
 * @author ~ LAAMIRI ~
 */
public class Room_management {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
       javax.swing.SwingUtilities.invokeLater(new Runnable() {
    public void run() {
        new Home().setVisible(true);
    }
    });
    }
    
}
