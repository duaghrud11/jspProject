package servay;

import java.util.InputMismatchException;
import java.util.List;
import java.util.Scanner;

public class Projectmain {
	public static void main(String[] args) {
		int k = 0;
		Scanner be = new Scanner(System.in);

		while (true) {
			int p = 0;
			System.out.println();
			System.out.println("�߰����� ���� ���� ������ �������� ��");
			System.out.println("1.���� �����ϱ�");
			System.out.println("2.����  ��Ȳ����");
			try {
				p = be.nextInt();
			} catch (InputMismatchException e) {
				
			be.next();
				
				}

			switch (p) {
			case 1:
				MenuDao md = new MenuDao();
				List<MenuVo> arr = md.show();
				for (MenuVo ho : arr) {
					System.out.println(ho);
				}
				System.out.println("0.��Ÿ()");

				try {
					k = be.nextInt();
				} catch (InputMismatchException e) {
				
					System.out.println("�߸� �Է��߽��ϴ�.\n �ٽ� �Է����ּ���");
				break;}
				if (k == 0) {
					System.out.println("���� ���� ���� ��:");

					String etc = be.next();

					MenuVo menu = new MenuVo(0, etc);
					md.insert(menu);

					break;
				}
				
				VoteVo vote = new VoteVo(0, k);

				VoteDao vd = new VoteDao();
				vd.vote(vote);
				
				break;
			case 2:
				VoteDao vdo = new VoteDao();
				List<VoteVo> brr = vdo.list();
				for (VoteVo pp : brr) {
					System.out.println(pp);
				}
				break;
			default : 
				System.out.println("�߸� �Է��߽��ϴ�.\n �ٽ� �Է����ּ���");
			}
		}
	}
}
