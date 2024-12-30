namespace my.bookshop;

entity Books {
  key ID : Integer @readonly @title: 'ID';
  key shop : String @title: 'Shop';
  title  : String @title: 'Title';
  stock  : Integer @title: 'Stock';
}
