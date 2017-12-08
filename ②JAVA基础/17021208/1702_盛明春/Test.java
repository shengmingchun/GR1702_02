package shop;

import java.util.ArrayList;
import java.util.Scanner;

public class Test {
	public static void main(String[] args) {
		ArrayList<Shop> arrayList = new ArrayList<Shop>();
		Scanner sc = new Scanner(System.in);
		Array a = new Array();
		boolean isQuit = true;
		a.help();
		int i;
		while (isQuit) {
			i = sc.nextInt();
			switch (i) {
			case 1:
				System.out.println("请输入添加信息");
				a.addShop(arrayList, sc);
				break;
			case 2:
				a.stockShop(arrayList, sc);
				break;
			case 3:
				a.sellShop(arrayList, sc);
				break;
			case 4:
				a.infoShop(arrayList);
				break;
			case 5:
				isQuit=false;
				break;

			default:
				break;
			}

		}
		System.out.println("再见！！！！！！");
	}
}
