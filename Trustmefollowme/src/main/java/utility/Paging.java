package utility;

public class Paging {
   //페이징 관련 변수   
   private int totalCount = 0 ; //총 레코드 건수
   private int totalPage = 0 ; //전체 페이지 수
   private int pageNumber = 0 ; //보여줄 페이지 넘버
   private int pageSize = 0 ; //한 페이지에 보여줄 건수
   private int beginRow = 0 ; //현재 페이지의 시작 행
   private int endRow = 0 ; //현재 페이지의 끝 행
   private int pageCount = 2 ; // 한 화면에 보여줄 페이지 링크 수
   private int beginPage = 0 ; //페이징 처리 시작 페이지 번호
   private int endPage = 0 ; //페이징 처리 끝 페이지 번호
   private int offset = 0 ;
   private int limit = 0 ;
   private String url = "" ;
   private String pagingHtml = "";//하단의 숫자 페이지 링크
   private String whatColumn = "" ; //검색 모드(작성자, 글제목)
   private String keyword = "" ; //검색할 단어 

   public int getTotalCount() {
      return totalCount;
   }


   public void setTotalCount(int totalCount) {
      this.totalCount = totalCount;
   }


   public int getTotalPage() {
      return totalPage;
   }


   public void setTotalPage(int totalPage) {
      this.totalPage = totalPage;
   }


   public int getPageNumber() {
      return pageNumber;
   }


   public void setPageNumber(int pageNumber) {
      this.pageNumber = pageNumber;
   }


   public int getPageSize() {
      return pageSize;
   }


   public void setPageSize(int pageSize) {
      this.pageSize = pageSize;
   }


   public int getBeginRow() {
      return beginRow;
   }


   public void setBeginRow(int beginRow) {
      this.beginRow = beginRow;
   }


   public int getEndRow() {
      return endRow;
   }


   public void setEndRow(int endRow) {
      this.endRow = endRow;
   }


   public int getPageCount() {
      return pageCount;
   }


   public void setPageCount(int pageCount) {
      this.pageCount = pageCount;
   }


   public int getBeginPage() {
      return beginPage;
   }


   public void setBeginPage(int beginPage) {
      this.beginPage = beginPage;
   }


   public int getEndPage() {
      return endPage;
   }


   public void setEndPage(int endPage) {
      this.endPage = endPage;
   }


   public int getOffset() {
      return offset;
   }


   public void setOffset(int offset) {
      this.offset = offset;
   }


   public int getLimit() {
      return limit;
   }


   public void setLimit(int limit) {
      this.limit = limit;
   }


   public String getUrl() {
      return url;
   }


   public void setUrl(String url) {
      this.url = url;
   }


   public String getPagingHtml() {
      System.out.println("pagingHtml:"+pagingHtml);
      
      return pagingHtml;

   }


   public void setPagingHtml(String pagingHtml) {
      this.pagingHtml = pagingHtml;
   }

   public String getWhatColumn() {
      return whatColumn;
   }


   public void setWhatColumn(String whatColumn) {
      this.whatColumn = whatColumn;
   }


   public String getKeyword() {
      return keyword;
   }


   public void setKeyword(String keyword) {
      this.keyword = keyword;
   }


   public Paging(
         String _pageNumber, 
         String _pageSize,  
         int totalCount,
         String url, 
         String whatColumn, 
         String keyword) {      

      if(  _pageNumber == null || _pageNumber.equals("null") || _pageNumber.equals("")  ){
         System.out.println("_pageNumber:"+_pageNumber); // null
         _pageNumber = "1" ;
      }
      this.pageNumber = Integer.parseInt( _pageNumber ) ; 

      if( _pageSize == null || _pageSize.equals("null") || _pageSize.equals("") ){
         _pageSize = "6" ; 
      }      
      this.pageSize = Integer.parseInt( _pageSize ) ;
      
      this.limit = pageSize ; // 한 페이지에 보여줄 레코드 갯수 ★★★

      this.totalCount = totalCount ; 

      this.totalPage = (int)Math.ceil((double)this.totalCount / this.pageSize) ;
               // 전체 레코드 / 한 페이지에 보여지는 넘버 = 8.5? ceil해서 반올림 9
      
      this.beginRow = ( this.pageNumber - 1 )  * this.pageSize  + 1 ;
      this.endRow =  this.pageNumber * this.pageSize ;
               // 한 페이지에 보여지는 넘버
      
      // 삭제 후에 보던 페이지로 넘어가도록 하는 코드
      if( this.pageNumber > this.totalPage ){
         this.pageNumber = this.totalPage ;
      }
      
      // 만약 3페이지를 보고 싶으면 건너뛰어야하는 레코드 갯수 ★★★
      this.offset = ( pageNumber - 1 ) * pageSize ; 
      
      if( this.endRow > this.totalCount ){
         this.endRow = this.totalCount  ;
      }

      this.beginPage = ( this.pageNumber - 1 ) / this.pageCount * this.pageCount + 1  ;
      this.endPage = this.beginPage + this.pageCount - 1 ;
      
      System.out.println("pageNumber:"+pageNumber+"/totalPage:"+totalPage);   
      
      if( this.endPage > this.totalPage ){
         this.endPage = this.totalPage ;
      }
      
      System.out.println("pageNumber2:"+pageNumber+"/totalPage2:"+totalPage);   
      this.url = url ; //  /ex/list.ab
      this.whatColumn = whatColumn ;
      this.keyword = keyword ;
      System.out.println("whatColumn:"+whatColumn+"/keyword:"+keyword);
      
      //System.out.println("url2:"+url); //url2:/ex/list.ab
      this.pagingHtml = getPagingHtml(url) ;
   
   }
   
   private String getPagingHtml( String url ){ //페이징 문자열을 만든다.
      System.out.println("getPagingHtml url:"+url); 
      
      String result = "" ;
      String added_param = "&whatColumn=" + whatColumn + "&keyword=" + keyword ;
      
      if (this.beginPage != 1) {
         result += "&nbsp;<a href='" + url  
               + "&pageNumber=" + ( 1 ) + "&pageSize=" + this.pageSize 
               + added_param + "'>첫 페이지</a>&nbsp;" ;
         result += "&nbsp;<a href='" + url 
               + "&pageNumber=" + (this.beginPage - 1 ) + "&pageSize=" + this.pageSize 
               + added_param + "'><</a>&nbsp;" ;
      }
      
      //가운데
      for (int i = this.beginPage; i <= this.endPage ; i++) {
         if ( i == this.pageNumber ) {
            result += "&nbsp;<font color='red'>" + i + "</font>&nbsp;"   ;
                  
         } else {
            result += "&nbsp;<a href='" + url   
                  + "&pageNumber=" + i + "&pageSize=" + this.pageSize 
                  + added_param + "'>" + i + "</a>&nbsp;" ;
            
         }
      }
      
      System.out.println("result:"+result); 
      System.out.println();
      
      if ( this.endPage != this.totalPage) { 
         
         result += "&nbsp;<a href='" + url  
               + "&pageNumber=" + (this.endPage + 1 ) + "&pageSize=" + this.pageSize 
               + added_param + "'>></a>&nbsp;" ;
         
         result += "&nbsp;<a href='" + url  
               + "&pageNumber=" + (this.totalPage ) + "&pageSize=" + this.pageSize 
               + added_param + "'>끝 페이지</a>&nbsp;" ;
      }      
      System.out.println("result2:"+result);
      
      return result ;
   }   
   
}
