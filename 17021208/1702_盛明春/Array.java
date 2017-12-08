package shop;


import java.util.ArrayList;
import java.util.Scanner;


public class Array implements IArray {

	public  void help() {
		System.out.println("---进销存系统---");
		System.out.println("1   新增商品");
		System.out.println("2   进货");
		System.out.println("3   销售");
		System.out.println("4   参看库存");
		System.out.println("5   退出功能");
		
	}
	
	public void addShop(ArrayList<Shop> arrayList, Scanner sc) {
		String s= sc.next();
		String[] sp= s.split(",");
		if (sp.length!=4) {
			System.out.println("输入的格式有误");
		}else{
			Shop shop=new Shop(sp[0], sp[1], Double.parseDouble(sp[2]),new Integer(sp[3]));
			arrayList.add(shop);
			System.out.println(shop.toString());
		}

	}

	
	public void stockShop(ArrayList<Shop> arrayList, Scanner sc) {
		System.out.println("请输入商品编号");
		String a = sc.next();
		boolean isnull =false;
		for (Shop shop : arrayList) {
			if (shop.getId().equals(a)) {	
			System.out.println("请输入进货数量");
			int b=sc.nextInt();
			shop.setNumber(shop.getNumber()+b);
			System.out.println("进货成功！该商品增加到"+shop.getNumber());
			isnull =true;
			break;
		}else{
			isnull=false;
		}
		}
		if (!isnull) {
			System.out.println("进货失败");
		}
}

	
	

	public void sellShop(ArrayList<Shop> arrayList, Scanner sc) {
	System.out.println("请输入欲销售的商品编号：");
	String string = sc.next();
	System.out.println("请输入销售数量：");
	int b=sc.nextInt();
	boolean is=false;
	for (Shop shop : arrayList) {
	
	if (shop.getId().equals(string)) {
		is=true;
		if (shop.getNumber()>=b) {
			shop.setNumber(shop.getNumber()-b);
			System.out.println("销售成功！该商品剩余"+shop.getNumber());
		} else {
System.out.println("销售失败");
		}
		break;
	} 
	else{
		is=false;
	}
	
	}
if (!is) {
	System.out.println("找不到该商品,销售失败");
}
	}

	
	public void infoShop(ArrayList<Shop> arrayList) {
		for (Shop shop : arrayList) {
			System.out.println(shop.toString());
		}

	}
	
}
