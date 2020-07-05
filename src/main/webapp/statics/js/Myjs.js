function f(){
   var cardid = $("#cardid-select").select().val()
    if (cardid==0){
        b = [1,1,1,1,1]
       alert("请选择正确的用户卡号")
        updatapie(b)
        return
    }
    $("#load").show()
    $.ajax({
        type: "POST",
        url: "/findexbytime/"+cardid,
        contentType: 'application/json',
        data: JSON.stringify({
            "cardid": cardid
        }),
        success: function (response) {

            bt=[]
            bt.push(response.partitionA)
            bt.push(response.partitionB)
            bt.push(response.partitionC)
            bt.push(response.partitionD)
            bt.push(response.partitionE)
            updatapie(bt)
            $("#load").hide()

        },
        dataType: "json"
    });
}


// <canvas id="chart-pie" width="500" height="300"></canvas>


function updatapie(bt) {


    $("#chart-pie").remove()
    $('#pie').append('<canvas id="chart-pie" width="500" height="300"></canvas>');
    window.myPie = new Chart($("#chart-pie"), {
        type: 'pie',
        data:{
            labels: ["6:30~9:00早餐", "9:00~13:30为上午", "13:30~14:30为中午","14:00~19:30为下午","19:30~23:00为晚上"],
            datasets: [{
                data: bt,
                backgroundColor: ['rgba(255,99,132,1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)','rgba(255, 100, 86, 1)','rgba(54, 180, 180, 1)']
            }]
        },
        options: {
            responsive: false
        }
    });

}

//(2018-09-01到2019-07-10)每个用户每段时间的消费情况
function f1() {
    var cardid = $("#line-cardid-select").select().val()
    var time = $("#line-time-select").select().val()


    b = [1,1,1,1,1]
    c = [1,1,1,1,1]
    if (cardid==0){

        alert("请选择正确的用户卡号")
        updataline(b,c)
        return
    }

    if (time==0){
        b = [1,1,1,1,1]
        alert("请选择正确的时间段")
        updataline(b,c)
        return
    }


    $("#exeveryload").show()
    $.ajax({
        type: "POST",
        url: "/findexbytime/"+cardid+"/"+time,
        contentType: 'application/json',
        data: JSON.stringify({
            "cardid": cardid,
            "time":time
        }),
        success: function (response) {

            b,c=[]
            b =response.date
            c = response.expenditure
            updataline(b,c)
            $("#exeveryload").hide()

        },
        dataType: "json"
    });
}



function updataline(b,c){
    $("#chart-line-2").remove()
    $('#chart-line-2-div').append(' <canvas id="chart-line-2" width="400" height="250"></canvas>');
    new Chart($("#chart-line-2"), {
        type: 'line',
        data: {
            labels: b,
            datasets: [{
                label: "消费",
                fill: false,
                borderWidth: 3,
                pointRadius: 5,
                borderColor: "#9966ff",
                pointBackgroundColor: "#9966ff",
                pointBorderColor: "#9966ff",
                pointHoverBackgroundColor: "#fff",
                pointHoverBorderColor: "#9966ff",
                data:c
            }]
        },
        options: {
            legend: {
                display: false
            },
        }
    });


}







//按月计算每个用户的总消费和平均消费
function f2() {

    var cardid = $("#month-select").select().val()
    if (cardid==0){

        alert("请选择正确的用户卡号")
        b = [1,1,1,1,1,1,1,1,1,1,1]
        c = [1,1,1,1,1,1,1,1,1,1,1]
        updataf2bar(b,c)
        return
    }
    $("#monthload").show()
    $.ajax({
        type: "POST",
        url: "/findMonthAllcostAndavg/"+cardid,
        contentType: 'application/json',
        data: JSON.stringify({
            "cardid": cardid
        }),
        success: function (response) {


            all = response.allspend
            avg = response.avgspend
            updataf2bar(all,avg)
            $("#monthload").hide()

        },
        dataType: "json"
    });
}


function updataf2bar(b,c){
    $("#chart-vbar-2").remove()
    $('#chart-vbar-2-div').append(' <canvas id="chart-vbar-2" width="400" height="250" ></canvas>');
    new Chart($("#chart-vbar-2"), {
        type: 'bar',
        data: {
            labels: ["sep18", "oct18", "nov18", "dec18", "jan19", "feb19", "mar19","apr19","may19","jun19","jul19"],
            datasets: [{
                label: "总消费",
                backgroundColor: "rgba(51,202,185,0.5)",
                borderColor: "rgba(0,0,0,0)",
                hoverBackgroundColor: "rgba(51,202,185,0.7)",
                hoverBorderColor: "rgba(0,0,0,0)",
                data: b
            },
                {
                    label: "平均消费",
                    backgroundColor: "rgba( 255,100,97,0.8)",
                    borderColor: "rgba(0,0,0,0)",
                    hoverBackgroundColor: "rgba( 255,100,97,1)",
                    hoverBorderColor: "rgba( 255,100,97)",
                    data: c
                }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });

}


