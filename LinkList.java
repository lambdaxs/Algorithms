class Link{
	int num;
	Link next;

	public Link(int num){
		this.num = num;
	}

	public void displayLink(){
		System.out.println(this.num);
	}

}
class LinkList{
	//链表类，具有first头指针属性，具有判断是否为空
	//插入头节点，删除头结点,打印整个链表的操作
	
	private Link first;

	public LinkList(){
		first = null;
	}

	public boolean isEmpty(){
		return (first==null);
	}

	public void insertFirst(int num){
		Link newlink = new Link(num);
		newlink.next = first;
		first = newlink;
	}

	public Link deleteFirst(){
		Link temp = first;
		first = first.next;
		return temp;
	}

	public void displayLinkList(){
		Link cur = first;

		while(cur != null){
			cur.displayLink();
			cur = cur.next;
		}
	}

	public static void main(String[] args) {
		LinkList mylist = new LinkList();
		mylist.insertFirst(10);
		mylist.insertFirst(9);
		mylist.insertFirst(11);
		mylist.deleteFirst();

		mylist.displayLinkList();
	}
}