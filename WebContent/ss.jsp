<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>
    Bar Chart Example - HTML5 jQuery Chart Plugin by jqChart
</title>
   <link rel="stylesheet" type="text/css" href="../css/jquery.jqChart.css" />
    <link rel="stylesheet" type="text/css" href="../css/jquery.jqRangeSlider.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.21/themes/smoothness/jquery-ui.css" />
    <script src="js/jquery-1.5.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.jqChart.min.js" type="text/javascript"></script>
    <script src="js/jquery.jqRangeSlider.min.js" type="text/javascript"></script>
    <script src="js/jquery.mousewheel.js" type="text/javascript"></script>
    <!--[if IE]><script lang="javascript" type="text/javascript" src="../js/excanvas.js"></script><![endif]-->
    
    <script lang="javascript" type="text/javascript">
        $(document).ready(function () {
            $('#jqChart').jqChart({
                title: { text: 'Bar Chart' },
                animation: { duration: 1 },
                shadows: {
                    enabled: true
                },
                series: [
                    {
                        type: 'bar',
                        title: 'Series 1',
                        fillStyle: '#418CF0',
                        data: [['A', 33], ['B', 57], ['C', 33],
                               ['D', 12], ['E', 35], ['F', 7], ['G', 24]]
                    },
                    {
                        type: 'bar',
                        title: 'Series 2',
                        fillStyle: '#FCB441',
                        data: [['A', 67], ['B', 25], ['C', 11],
                               ['D', 8], ['E', 44], ['F', 14], ['G', 78]]
                    }
                ]
            });
        });
    </script>

</head>
<body>
    <div>
        <div id="jqChart" style="width: 500px; height: 300px;"></div>
    </div>
</body>
</html>