/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Pkung
 */
public class Cart {

    private Map<String, String> content;

    public Cart() {
        content = new HashMap<>();
    }

    public Map<String, String> getContent() {
        return content;
    }

    public void setContent(Map<String, String> content) {
        this.content = content;
    }

    public void addCart(String id, String quantity) {
        if (content == null) {
            content = new HashMap<String, String>();
            content.put(id, quantity);
        } else {
            if (!content.containsKey(id)) {
                content.put(id, quantity);
            } else {
                content.remove(id);
                content.put(id, quantity);
            }
        }
    }

    public void deleteProduct(String id) {
        content.remove(id);
    }

    public void updateProduct(String id, String quantity) {
        content.remove(id);
        content.put(id, quantity);
    }

    public void delCart() {
        content = null;
    }

    public void updateCart(String[] id, String[] quantity) {
        content.clear();
        for (int i = 0; i < id.length; i++) {
            content.put(id[i], quantity[i]);
        }
    }

    public void addItem(String id) {
        if (content == null) //gio hang chua exits
        {
            content = new HashMap<>();
            content.put(id, "1");
        } else //da co gio hang
        {
            if (!content.containsKey(id))//san pham chua co trong gio hang
            {
                content.put(id, "1");

            } else //san pham da co trong gio hang
            {
                String temp = content.get(id).toString();
                int current = Integer.parseInt(temp);
                current++;
                content.remove(id);
                content.put(id, String.valueOf(current));

            }
        }
    }
}
