**Bài 1 (5 điểm): Bán lúa (Tên file làm bài BANLUA.PAS)**

Ông A thu hoạch được n bao lúa (n là số tự nhiên), Các bao lúa có nhiều kích cỡ, khối lượng tương ứng của các bao lúa là ai kg (30 ≤ ai ≤ 70 và i là các số từ 1 đến n). Sau khi thu hoạch, ông A xếp n bao lúa vào trong kho theo thứ tự (bao số 1 xếp trước, đến bao số 2, ..., bao ngoài cùng là bao thứ n). Ông dự định bán lúa theo cách sau:
+ Bán nguyên bao lúa.
+ Bán từ ngoài vào trong.
+ Khối lượng lúa bán đi ít hơn hoặc bằng khối lượng lúa còn lại trong kho.
Em hãy viết chương trình đọc dữ liệu từ file BANLUA.INP và thực hiện các yêu cầu sau: 
    + Ông A có bán lúa không?
    + Nếu ông A bán lúa thì có thể bán nhiều nhất bao nhiêu bao lúa? Tổng khối lượng lúa đã bán đi là bao nhiêu kilogam? 
    
**Dữ liệu vào:** Cho file văn bản BANLUA.INP như sau:

Dòng thứ nhất là một số tự nhiên n	(0<n<500)

Dòng thứ hai là một dãy các số nguyên a1; a2; a3;…; an. Trong đó mỗi ai là khối lượng của một bao lúa. Mỗi phần tử cách nhau một khoảng trắng.

**Kết quả:** Ghi ra file văn bản BANLUA.OUT
Dòng thứ nhất ghi một từ “YES” hoặc “NO” trong đó “YES” là ông A có bán lúa còn “NO” là ông A không bán lúa.

Dòng thứ hai ghi 2 số: số thứ nhất là số bao lúa ông A đã bán; Số thứ hai là tổng khối lượng lúa ông A đã bán.

**Ví dụ 1:**

| BANLUA.INP | BANLUA.OUT |
| --------------| ---------------|
| 5 | YES|
| 52	62	58	61	51 | 2 112|

**Ví dụ 2:**

| BANLUA.INP | BANLUA.OUT |
| --------------| ---------------|
| 2 | NO|
| 52	62||