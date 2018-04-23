**Bài 2 (5 điểm): ROBOT (Tên file làm bài ROBOT.PAS)**

Cho một lưới ô vuông cấp NxN ( 1≤ N≤ 100). Trên mỗi ô của lưới người ta ghi một số nguyên a (1≤ a ≤ 100)  được gọi là số điểm của ô đó. Một chú robot đang ở ô (i,j) của lưới chỉ được di chuyển đến một trong hai ô (i+1,j) hoặc ô (i,j+1). Robot đi đến ô nào thì nhận được số điểm tương ứng ở ô đó. Hãy tìm cho Robot một đường đi từ ô (1,1) đến ô (N,N) theo nguyên tắc trên và tích lũy được số điểm nhiều nhất?

**Dữ liệu vào:** Từ file văn bản ROBOT.INP, 
Dòng đầu tiên ghi 1 số nguyên dương N.
	N dòng tiếp theo mỗi dòng ghi N số nguyên.
	
**Kết quả:** Ghi ra file văn bản ROBOT.OUT, dòng đầu tiên ghi một số S là số điểm mà robot tích lũy được. Từ dòng thứ 2 trở đi mỗi dòng ghi 2 số nguyên dương là toạ độ các ô theo thứ tự trên đường đi của robot (Nếu có nhiều phương án đúng chỉ cần ghi ra một phương án đúng).

**Ví dụ:**

| ROBOT.INP | ROBOT.OUT |
| --------------| ---------------|
| 4 | 42 |
| 5  1  3  4 |  1 1|
 | 6  7  9  1| 2 1| 
  |1  1  8  4|  2 2|
  |1  3  4  3| 2 3|
  | | 3 3|
  | | 4 3|
  | | 4 4|
 