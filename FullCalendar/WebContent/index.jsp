<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="./lib/main.css" rel="stylesheet"/>
<script src="./lib/main.js"></script>

<!-- [출처] https://fullcalendar.io/ -->

<script>

/* document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      headerToolbar: {
        left:'prev,next today',
        center:'title',
        right:'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
      },
         initialDate:'2020-09-11',  // new Date()      처음 실행시 기준이 되는 날짜 
         local:'ko',                 // 한글 설정   
         navLinks: true,
         businessHours: true 
 		});
	calendar.render();
}); */

document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
      },
      initialDate: '2020-09-12',
      locak:'ko',
      navLinks: true, 
      businessHours: true,
    
      events: [
        {
          title: '사장님 나이스샷',
          start: '2020-09-03T13:00:00',
          constraint: '강사장님'
        },
        {
          title: '강남 건물 매매',
          start: '2020-09-13T11:00:00',
          constraint: '지출', // defined below
          color: '#257e4a'
        },
        {
          title: '그냥 놀기',
          start: '2020-09-18',
          end: '2020-09-20'
        },
        {
          title: '파뤼',
          start: '2020-09-29T20:00:00'
        },

        // areas where "Meeting" must be dropped
        {
          groupId: 'availableForMeeting',
          start: '2020-09-11T10:00:00',
          end: '2020-09-11T16:00:00',
          display: 'background'
        },
        {
          groupId: 'availableForMeeting',
          start: '2020-09-13T10:00:00',
          end: '2020-09-13T16:00:00',
          display: 'background'
        },

        // red areas where no events can be dropped
        {
          start: '2020-09-24',
          end: '2020-09-28',
          overlap: false,
          display: 'background',
          color: '#ff9f89'
        },
        {
          start: '2020-09-06',
          end: '2020-09-08',
          overlap: false,
          display: 'background',
          color: '#ff9f89'
        }
      ]
    });

    calendar.render();

    //event
    calendar.on("dateClick", function(info){
           // alert("dateClick"); 
    	alert(info.dateStr);   // 클릭하는 해당 날짜 출력 
        }); 
    calendar.on("eventClick", function(info){
 	    // alert("eventClick");
 	    alert(info.event.title);   // 해당 일정의 제목을 출력
     }); 

    //일정추가
    calendar.addEvent({'title':'추가이벤트', 'start':'2020-09-12 12:20:00', 'constraint':'내용무'});
    
  });
    
</script>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 1100px;
    margin: 0 auto;
  }

</style>
</head>
<body>


 <div id='calendar'></div>

</body>
</html>