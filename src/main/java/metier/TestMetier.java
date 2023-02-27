package metier;

import java.util.List;

public class TestMetier {
	
	public static void main(String[] args) {
		MetierImpl metier= new MetierImpl();
		List<Produit> prods = metier.getProduitsParMotCle("iphone 13");
		List<Produit> prodss = metier.getProduitsParMotCle("huawei y9 prime");
		for (Produit p : prods)
		System.out.println(p.getNomProduit());
		for (Produit p : prodss)
			System.out.println(p.getNomProduit());
		}

	

}
