/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package miniprojetmasterun;


import java.awt.Color;
import java.awt.Component;

import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;
/**
 *
 * @author ZTF666
 */
public class cellRenderer1 extends DefaultTableCellRenderer {

	@Override
	public Component getTableCellRendererComponent(JTable table, Object value,
			boolean isSelected, boolean hasFocus, int row, int column) {
		// TODO Auto-generated method stub
		 super.getTableCellRendererComponent(table, value, isSelected, hasFocus,
				row, column);
		String seen = (String) value;
		setText(seen);

		if (seen.equals("1")) {
			setBackground(Color.GREEN);
		} else {
			setBackground(Color.RED);
		}
                

		return this;
	}

}
