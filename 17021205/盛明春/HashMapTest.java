package zk.qhit.smc;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;

public class HashMapTest {

	public static void main(String[] args) {
		// 集合类存储对象
		HashMap<Country, String> hashmap = new HashMap<Country, String>();

		Country china = new Country("china", 15);
		Country japan = new Country("japan", 2);
		Country india = new Country("india", 14);
		hashmap.put(india, "Delhi");
		hashmap.put(japan, "tokeo");
		hashmap.put(china, "beijing");

		String string = hashmap.get(india);
		System.out.println(string);
		String string2 = hashmap.get(japan);
		System.out.println(string2);
		String string3 = hashmap.get(china);
		System.out.println(string3);

		Iterator<Entry<Country, String>> iterator = hashmap.entrySet().iterator();
		while (iterator.hasNext()) {
			Entry<Country, String> entry = iterator.next();
			Country key = entry.getKey();
			String value = entry.getValue();
			System.out.println(key.toString()+"  "+value);
			
		}
		}
	}


