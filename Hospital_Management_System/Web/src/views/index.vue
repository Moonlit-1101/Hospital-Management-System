<template>
    <div class="app-container home">
        <el-row :gutter="20">
            <el-col :sm="24" :lg="24">
                <blockquote class="text-warning" style="font-size: 14px">
                    {{title}}！欢迎您，点击左侧开始操作
                </blockquote>

                <hr />
            </el-col>
        </el-row>
        <el-row :gutter="20">
            <el-col :sm="24" :lg="24">
                <div id="main" style="width: 100%; height: 400px;"></div>
            </el-col>
        </el-row>
        <el-row :gutter="20">
            <el-col :sm="24" :lg="24">
                <!-- 用于渲染饼状图的容器 -->
                <div id="main2" style="width: 100%; height: 400px;"></div>
            </el-col>
        </el-row>
    </div>
</template>

<script setup name="Index">
import { ref } from 'vue';
//动画
import * as echarts from 'echarts/core';
import { GraphicComponent } from 'echarts/components';
import { CanvasRenderer } from 'echarts/renderers';

import {
    TitleComponent,
    TooltipComponent,
    LegendComponent
} from 'echarts/components';
import { PieChart } from 'echarts/charts';
import { LabelLayout } from 'echarts/features';

echarts.use([GraphicComponent, CanvasRenderer]);

echarts.use([
    TitleComponent,
    TooltipComponent,
    LegendComponent,
    PieChart,
    CanvasRenderer,
    LabelLayout
]);
const version = ref('3.8.8');
const title = import.meta.env.VITE_APP_TITLE;
const pieData = ref([]);
/*function goTarget(url) {
    window.open(url, '__blank');
}*/
// 在 onMounted 钩子中初始化 ECharts 图表
import { onMounted } from 'vue';
import {getNumberListHospitalInfo} from "../api/hospital/hospitalInfo";
onMounted(() => {
    const chartDom = document.getElementById('main');
    const myChart = echarts.init(chartDom);
    let option;
    option = {
        graphic: {
            elements: [
                {
                    type: 'text',
                    left: 'center',
                    top: 'center',
                    style: {
                        text: title,
                        fontSize: 80,
                        fontWeight: 'bold',
                        lineDash: [0, 200],
                        lineDashOffset: 0,
                        fill: 'transparent',
                        stroke: '#000',
                        lineWidth: 1
                    },
                    keyframeAnimation: {
                        duration: 3000,
                        loop: true,
                        keyframes: [
                            {
                                percent: 0.7,
                                style: {
                                    fill: 'transparent',
                                    lineDashOffset: 200,
                                    lineDash: [200, 0]
                                }
                            },
                            {
                                // Stop for a while.
                                percent: 0.8,
                                style: {
                                    fill: 'transparent'
                                }
                            },
                            {
                                percent: 1,
                                style: {
                                    fill: 'black'
                                }
                            }
                        ]
                    }
                }
            ]
        }
    };
    option && myChart.setOption(option);
    getNumberListHospitalInfo().then(response => {
        pieData.value = response;
// 初始化饼状图的 ECharts 实例
        const pieChartDom = document.getElementById('main2');
        const pieChart = echarts.init(pieChartDom);
        let pieOption;
        pieOption = {
            title: {
                text: '医院病人一览图',
                subtext: '',
                left: 'center'
            },
            tooltip: {
                trigger: 'item'
            },
            legend: {
                orient: 'vertical',
                left: 'left'
            },
            series: [
                {
                    name: '状态',
                    type: 'pie',
                    radius: '50%',
                    data: pieData.value,
                    emphasis: {
                        itemStyle: {
                            shadowBlur: 10,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]
        };
        pieOption && pieChart.setOption(pieOption);
    })



});
</script>

<style scoped lang="scss">
.home {
  blockquote {
    padding: 10px 20px;
    margin: 0 0 20px;
    font-size: 17.5px;
    border-left: 5px solid #eee;
  }
  hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
  }
  .col-item {
    margin-bottom: 20px;
  }

  ul {
    padding: 0;
    margin: 0;
  }

  font-family: "open sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 13px;
  color: #676a6c;
  overflow-x: hidden;

  ul {
    list-style-type: none;
  }

  h4 {
    margin-top: 0px;
  }

  h2 {
    margin-top: 10px;
    font-size: 26px;
    font-weight: 100;
  }

  p {
    margin-top: 10px;

    b {
      font-weight: 700;
    }
  }

  .update-log {
    ol {
      display: block;
      list-style-type: decimal;
      margin-block-start: 1em;
      margin-block-end: 1em;
      margin-inline-start: 0;
      margin-inline-end: 0;
      padding-inline-start: 40px;
    }
  }
}
</style>