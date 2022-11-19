package websys;

/**
 * Session Bean implementation class CartItemBean
 */
public class CartItemBean  implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	private String productNumber;
    private String productDescription;
    private double UnitCost;
    private int Quantity;
    private double TotalCost;
    private int ItemCount;
    private String image;

    /**
	 * @return the image
	 */
	public String getImage() {
		return image;
	}

	/**
	 * @param image the image to set
	 */
	public void setImage(String image) {
		this.image = image;
	}

	/**
     * Default constructor. 
     */
    public CartItemBean() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @return the productNumber
	 */
	public String getProductNumber() {
		return productNumber;
	}

	/**
	 * @param productNumber the productNumber to set
	 */
	public void setProductNumber(String productNumber) {
		this.productNumber = productNumber;
	}

	/**
	 * @return the productDescription
	 */
	public String getProductDescription() {
		return productDescription;
	}

	/**
	 * @param productDescription the productDescription to set
	 */
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	/**
	 * @return the unitCost
	 */
	public double getUnitCost() {
		return UnitCost;
	}

	/**
	 * @param unitCost the unitCost to set
	 */
	public void setUnitCost(double unitCost) {
		UnitCost = unitCost;
	}

	/**
	 * @return the quantity
	 */
	public int getQuantity() {
		return Quantity;
	}

	/**
	 * @param quantity the quantity to set
	 */
	public void setQuantity(int quantity) {
		Quantity = quantity;
	}

	/**
	 * @return the totalCost
	 */
	public double getTotalCost() {
		return TotalCost;
	}

	/**
	 * @param totalCost the totalCost to set
	 */
	public void setTotalCost(double totalCost) {
		TotalCost = totalCost;
	}

	public int getItemCount() {
		return ItemCount;
	}

	public void setItemCount(int itemCount) {
		ItemCount = itemCount;
	}
    
    

}
