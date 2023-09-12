package cart;

public class cartDTO {

	private int cartID;
	private String useID;
	private int num;
	private int numCount;
	
	private String maker;
	private String prodName;
	
	private int totlaPrice;

	public int getCartID() {
		return cartID;
	}

	public void setCartID(int cartID) {
		this.cartID = cartID;
	}

	public String getUseID() {
		return useID;
	}

	public void setUseID(String useID) {
		this.useID = useID;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getNumCount() {
		return numCount;
	}

	public void setNumCount(int numCount) {
		this.numCount = numCount;
	}

	public String getMaker() {
		return maker;
	}

	public void setMaker(String maker) {
		this.maker = maker;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public int getTotlaPrice() {
		return totlaPrice;
	}
	
	
	@Override
	public String toString() {
		return "cartDTO [cartID=" + cartID + ", useID=" + useID + ", num=" + num + ", numCount=" + numCount + ", maker="
				+ maker + ", prodName=" + prodName + ", totlaPrice=" + totlaPrice + "]";
	}

	
	
	
}
