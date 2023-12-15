package swing;
import java.awt.AlphaComposite;
import java.awt.Color;
import javax.swing.JPanel;
import java.awt.Graphics;
import java.awt.RenderingHints;
import java.awt.Graphics2D;


public class PanelRound extends JPanel{
    
    public PanelRound(){
        setOpaque(false);
    }
    
    protected void paintComponent(Graphics grphcs){
        Graphics2D g2=(Graphics2D)grphcs;
        g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING,RenderingHints.VALUE_ANTIALIAS_ON);
        g2.setColor(new Color(255,255,255));
        g2.fillRoundRect(0, 0, getWidth(), getHeight(),20,20);
        g2.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER,0.5f));
        super.paintComponents(grphcs);
    }

    
}
