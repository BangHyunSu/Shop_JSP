package prod;

public class ProdDTO {
	private String maker;
	private String prodName;
	private String discrip;
	private int amount;
	private int price;
	private String cate;
	private int num;
	
	String fileFullPath;
	String fileName;
	
	public ProdDTO() { }

	public ProdDTO(String maker, String prodName, String discrip, int amount, int price, String cate, int num,
			String fileFullPath, String fileName) {
		super();
		this.maker = maker;
		this.prodName = prodName;
		this.discrip = discrip;
		this.amount = amount;
		this.price = price;
		this.cate = cate;
		this.num = num;
		this.fileFullPath = fileFullPath;
		this.fileName = fileName;
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

	public String getDiscrip() {
		return discrip;
	}

	public void setDiscrip(String discrip) {
		this.discrip = discrip;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getCate() {
		return cate;
	}

	public void setCate(String cate) {
		this.cate = cate;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getFileFullPath() {
		return fileFullPath;
	}

	public void setFileFullPath(String fileFullPath) {
		this.fileFullPath = fileFullPath;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	@Override
	public String toString() {
		return "ProdDTO [maker=" + maker + ", prodName=" + prodName + ", discrip=" + discrip + ", amount=" + amount
				+ ", price=" + price + ", cate=" + cate + ", num=" + num + ", fileFullPath=" + fileFullPath
				+ ", fileName=" + fileName + "]";
	}
	
}
