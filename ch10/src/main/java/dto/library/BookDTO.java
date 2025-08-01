package dto.library;

public class BookDTO {
	private String bookid;
	private String name;
	private String author;
	private String publisher;
	private String available;
	private String regdate;
	public String getBookid() {
		return bookid;
	}
	public void setBookid(String bookid) {
		this.bookid = bookid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getAvailable() {
		return available;
	}
	public void setAvailable(String available) {
		this.available = available;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "BookDTO [bookid=" + bookid + ", name=" + name + ", author=" + author + ", publisher=" + publisher
				+ ", available=" + available + ", regdate=" + regdate + "]";
	}
	
	
	
}
