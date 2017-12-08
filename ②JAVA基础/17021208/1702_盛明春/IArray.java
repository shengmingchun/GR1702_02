package shop;

import java.util.ArrayList;
import java.util.Scanner;

public interface IArray {
	
void  addShop(ArrayList<Shop> arrayList,Scanner sc);
void  stockShop(ArrayList<Shop> arrayList,Scanner sc);
void  sellShop(ArrayList<Shop> arrayList,Scanner sc);
void  infoShop(ArrayList<Shop> arrayList);
}
