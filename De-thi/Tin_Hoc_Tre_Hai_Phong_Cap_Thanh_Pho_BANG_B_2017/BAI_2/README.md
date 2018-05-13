**Câu 2 (30 điểm): Xâu xoay vòng**

Cho xâu S gồm N kí tự tạo từ các chữ cái 'a'..'z'. Ta gọi S là xâu mẫu. Từ xâu mẫu S này người ta tạo ra N xâu thứ cấp bằng cách dịch xâu S qua trái i vị trí theo dạng vòng tròn, tức là i kí tự đầu lần lượt được chuyển về cuối xâu, i = 0, 1,..., N-1. Như vậy xâu thứ cấp với i = 0 sẽ trùng với xâu mẫu S. Giả sử ta đã sắp tăng N xâu thu được theo trật từ từ điển. Hãy tìm xâu thứ k trong dãy. Dữ liệu vào: tệp văn bản abc.inp có câu trúc như sau:
- Dòng thứ nhất chứa 2 số tự nhiên N và k cách nhau qua dấu cách, 6 =< N =< 500, 1 =< k =< N. N cho biết chiều dài xâu S, k cho biết vị trí của xâu thứ cấp trong dãy được sắp tăng theo thứ tự từ điển.
- Dòng thứ hai: xâu mẫu S.

Dữ liệu ra: Tệp văn bản abc.out gồm 1 dòng chứa xâu thứ k trong dãy được sắp.

**Ví dụ:**

| abc.inp| abc.out |
| --- | --- |
| 6 |  |
| 3 | cdabde |
| dabdec |  |

### Thuật toán

- Xác định các bước cần làm:
    - Đọc file abc.inp, ghi giá trị vào biến
    - Tạo các xâu mới từ xâu đã cho
    - Sắp xếp các xâu lại theo thứ tự từ điển
    - Ghi kết quả ra file abc.out
- Thuật toán tạo xâu mới từ xâu đã cho: Sử dụng 1 biến tạm có kiểu dữ liệu là "char", chạy vòng lặp từ 1 tới chiều dài của chuỗi trừ đi 1 (```length(str)-1```). Trong vòng lặp sử dụng biến tạm đó để đổi vị trí cho kí tự đầu với kí tự cuối.
- Thuật toán sắp xếp các xâu lại theo thứ tự từ điển: Tạo một hàm so sánh giữa 2 chuỗi.
 Dùng vòng lặp duyệt từ kí tự đầu đến kí tự cuối của 2 chuỗi. Để so sánh 2 chuỗi ta dùng hàm ord() là hàm lấy số thứ tự của kí tự trong bảng mã ASCII, nếu  giá trị nào nhỏ hơn thì kí tự đó nhỏ hơn, giá trị nào lớn hơn thì kí tự đó lớn hơn, giá trị nào bằng nhau thì xét tiếp kí tự tiếp theo.
