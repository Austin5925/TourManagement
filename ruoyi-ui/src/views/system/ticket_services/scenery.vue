<!--<template>-->
<!--  <div>-->
<!--    <el-form ref="elForm" :model="formData" :rules="rules" size="medium" label-width="100px"-->
<!--             label-position="left">-->
<!--      <el-form-item label="预约" prop="sceneryAppointment">-->
<!--        <el-button type="primary" icon="el-icon-search" size="medium"> 预约 </el-button>-->
<!--      </el-form-item>-->
<!--      <el-form-item label="购票信息" prop="sceneryTicketInfo">-->
<!--        <el-button type="primary" icon="el-icon-search" size="medium"> 购票信息 </el-button>-->
<!--      </el-form-item>-->
<!--      <el-form-item label="入园登记" prop="sceneryIn">-->
<!--        <el-button type="primary" icon="el-icon-search" size="medium"> 入园登记 </el-button>-->
<!--      </el-form-item>-->
<!--      <el-form-item label="出园登记" prop="sceneryOut">-->
<!--        <el-button type="primary" icon="el-icon-search" size="medium"> 出园登记 </el-button>-->
<!--      </el-form-item>-->
<!--      <el-form-item size="large">-->
<!--        <el-button type="primary" @click="submitForm">提交</el-button>-->
<!--        <el-button @click="resetForm">重置</el-button>-->
<!--      </el-form-item>-->
<!--    </el-form>-->
<!--  </div>-->
<!--</template>-->
<!--<script>-->
<!--export default {-->
<!--  components: {},-->
<!--  props: [],-->
<!--  data() {-->
<!--    return {-->
<!--      formData: {-->
<!--        sceneryAppointment: undefined,-->
<!--        sceneryTicketInfo: undefined,-->
<!--        sceneryIn: undefined,-->
<!--        sceneryOut: undefined,-->
<!--      },-->
<!--      rules: {},-->
<!--    }-->
<!--  },-->
<!--  computed: {},-->
<!--  watch: {},-->
<!--  created() {},-->
<!--  mounted() {},-->
<!--  methods: {-->
<!--    submitForm() {-->
<!--      this.$refs['elForm'].validate(valid => {-->
<!--        if (!valid) return-->
<!--        // TODO 提交表单-->
<!--      })-->
<!--    },-->
<!--    resetForm() {-->
<!--      this.$refs['elForm'].resetFields()-->
<!--    },-->
<!--  }-->
<!--}-->

<!--</script>-->
<!--<style>-->
<!--</style>-->


<template>
  <div class="app-container">
<!--    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">-->
<!--      <el-form-item label="门票号" prop="ticketId">-->
<!--        <el-input-->
<!--          v-model="queryParams.ticketId"-->
<!--          placeholder="请输入门票号"-->
<!--          clearable-->
<!--          @keyup.enter.native="handleQuery"-->
<!--        />-->
<!--      </el-form-item>-->
<!--      <el-form-item label="身份证号" prop="cnId">-->
<!--        <el-input-->
<!--          v-model="queryParams.cnId"-->
<!--          placeholder="请输入身份证号"-->
<!--          clearable-->
<!--          @keyup.enter.native="handleQuery"-->
<!--        />-->
<!--      </el-form-item>-->
<!--      <el-form-item label="预约日期">-->
<!--        <el-date-picker-->
<!--          v-model="daterangeScheduledDate"-->
<!--          style="width: 240px"-->
<!--          value-format="yyyy-MM-dd"-->
<!--          type="daterange"-->
<!--          range-separator="-"-->
<!--          start-placeholder="开始日期"-->
<!--          end-placeholder="结束日期"-->
<!--        ></el-date-picker>-->
<!--      </el-form-item>-->
<!--      <el-form-item label="入园时间">-->
<!--        <el-date-picker-->
<!--          v-model="daterangeVisitorInTime"-->
<!--          style="width: 240px"-->
<!--          value-format="yyyy-MM-dd"-->
<!--          type="daterange"-->
<!--          range-separator="-"-->
<!--          start-placeholder="开始日期"-->
<!--          end-placeholder="结束日期"-->
<!--        ></el-date-picker>-->
<!--      </el-form-item>-->
<!--      <el-form-item label="出园时间">-->
<!--        <el-date-picker-->
<!--          v-model="daterangeVisitorOutTime"-->
<!--          style="width: 240px"-->
<!--          value-format="yyyy-MM-dd"-->
<!--          type="daterange"-->
<!--          range-separator="-"-->
<!--          start-placeholder="开始日期"-->
<!--          end-placeholder="结束日期"-->
<!--        ></el-date-picker>-->
<!--      </el-form-item>-->
<!--      <el-form-item label="参观状态" prop="stateVisit">-->
<!--        <el-input-->
<!--          v-model="queryParams.stateVisit"-->
<!--          placeholder="请输入参观状态"-->
<!--          clearable-->
<!--          @keyup.enter.native="handleQuery"-->
<!--        />-->
<!--      </el-form-item>-->
<!--      <el-form-item label="门票类型" prop="typeTicket">-->
<!--        <el-input-->
<!--          v-model="queryParams.typeTicket"-->
<!--          placeholder="请输入门票类型"-->
<!--          clearable-->
<!--          @keyup.enter.native="handleQuery"-->
<!--        />-->
<!--      </el-form-item>-->
<!--      <el-form-item>-->
<!--        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>-->
<!--        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>-->
<!--      </el-form-item>-->
<!--    </el-form>-->
      <el-row :gutter="10" class="mb8">
        <el-col :span="1.5">
          <el-button
            type="primary"
            plain
            icon="el-icon-plus"
            size="large"
            @click="handleAppoint"

          >预约</el-button>
        </el-col>

        <el-col :span="1.5">
          <el-button
            type="success"
            plain
            icon="el-icon-search"
            size="large"
            @click="handleCheckInfo"

          >查询预约信息</el-button>
        </el-col>
        <el-col :span="1.5">
          <el-button
            type="warning"
            plain
            icon="el-icon-right"
            size="large"
            @click="handleInPark()"

          >入园登记</el-button>
        </el-col>
        <el-col :span="1.5">
          <el-button
            type="info"
            plain
            icon="el-icon-left"
            size="large"
            @click="handleOutPark()"

          >出园登记</el-button>
        </el-col>
        <el-col :span="1.5">
          <div class="capacity">
            <div class="peopleInfo" :class="isFull ? 'full' : 'not-full'">
              <div class="count">
                {{ this.peopleCount }} / {{ this.totalCount }}
              </div>
              <div class="status">
                {{ isFull ? '已满' : '未满' }}
              </div>
            </div>
          </div>
        </el-col>
        <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
      </el-row>


    <el-table v-loading="loading" :data="ticket_servicesList" @selection-change="handleSelectionChange"
              @row-click="handleRowClick">
      <el-table-column type="selection" width="55" align="center"/>
      <el-table-column label="ID" align="center" prop="id" />
      <el-table-column label="门票号" align="center" prop="ticketId" />
      <el-table-column label="身份证号" align="center" prop="cnId" />
      <el-table-column label="预约日期" align="center" prop="scheduledDate" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.scheduledDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="入园时间" align="center" prop="visitorInTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.visitorInTime, '{y}-{m}-{d} {h}:{i}:{s}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="出园时间" align="center" prop="visitorOutTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.visitorOutTime, '{y}-{m}-{d} {h}:{i}:{s}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="参观状态" align="center" prop="stateVisit" />
      <el-table-column label="门票类型" align="center" prop="typeTicket" >
        <template slot-scope="scope">
          <span>{{ scope.row.typeTicket == 1 ? '成人票' : (scope.row.typeTicket == 2 ? '儿童票' :
            (scope.row.typeTicket == 3 ? '学生票' : (scope.row.typeTicket == 4 ? 'VIP票' : '长者票'))) }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"

          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"

          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <template>
      <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
        <el-form ref="form" :model="form" :rules="rules" label-width="80px">
          <el-form-item label="姓名" prop="visitorsName">
            <el-input v-model="form.visitorsName" placeholder="请输入姓名" />
          </el-form-item>
          <el-form-item label="身份证" prop="cnId">
            <el-input v-model="form.cnId" placeholder="请输入身份证号" />
          </el-form-item>
          <el-form-item label="手机号" prop="phoneNumber">
            <el-input v-model="form.phoneNumber" placeholder="请输入手机号" />
          </el-form-item>
          <el-form-item label="预约日期" prop="scheduledDate">
            <el-date-picker clearable
                            v-model="form.scheduledDate"
                            type="date"
                            value-format="yyyy-MM-dd"
                            :picker-options="pickerOptions"
                            placeholder="请选择预约日期">
            </el-date-picker>
          </el-form-item>
          <el-form-item label="门票类型" prop="typeTicket">
            <el-select v-model="form.typeTicket" placeholder="请下拉选择" clearable :style="{width: '100%'}">
              <el-option v-for="(item, index) in ticketsType" :key="index" :label="item.typeTicket"
                         :value="item.id" :disabled="item.disabled"></el-option>
            </el-select>
          </el-form-item>
        </el-form>
        <div slot="footer" class="dialog-footer">
          <el-button type="primary" @click="submitForm">确 定</el-button>
          <el-button @click="cancel">取 消</el-button>
        </div>
      </el-dialog>
    </template>

    <!-- 游客查询信息 -->
    <el-dialog :title="title" :visible.sync="open2" width="500px">
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="身份证" prop="cnId">
          <el-input v-model="form.cnId" placeholder="请输入身份证号" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitFormQuery">确 定</el-button>
        <el-button @click="cancel2">取 消</el-button>
      </div>
    </el-dialog>



    <el-dialog ref="queryInfoDialog"
               title="游客预约信息查询结果"
               v-if="queryInfoDialog"
               :visible.sync="open3"
               width="500px"
               append-to-body>
      <div v-for="(result, index) in form.rows" :key="index">
        <el-row>
          <el-col :span="6">游客身份证：</el-col>
          <el-col :span="18">{{ result.cnId }}</el-col>
        </el-row>
        <el-row>
          <el-col :span="6">预订日期：</el-col>
          <el-col :span="18">{{ parseTime(result.scheduledDate, '{y}-{m}-{d}') }}</el-col>
        </el-row>
        <el-row>
          <el-col :span="6">票号：</el-col>
          <el-col :span="18">{{ result.ticketId }}</el-col>
        </el-row>
        <el-row>
          <el-col :span="6">票的种类：</el-col>
          <el-col :span="18">{{ result.typeTicket == 1 ? '成人票' : (result.typeTicket == 2 ? '儿童票' :
            (result.typeTicket == 3 ? '学生票' : (result.typeTicket == 4 ? 'VIP票' : '长者票'))) }}</el-col>
        </el-row>
        <hr v-if="index !== form.length - 1" /> <!-- Optional: Adds a line between each result -->
      </div>
      <div slot="footer" class="dialog-footer">
        <el-button @click="open3 = false">确 定</el-button>
      </div>
    </el-dialog>



  </div>
</template>



<script>
import {
  listTicket_services,
  getTicket_services,
  delTicket_services,
  addTicket_services,
  updateTicket_services,
  appointTicket_services,
  checkInfoTicket_services,
  returnCheckInfoTicket_services,
  inParkTicket_services, outParkTicket_services, getPeopleCounts
} from "@/api/system/ticket_services";
import {getParkingCount} from "@/api/system/cars";
import {getTicket_prices, listTicket_prices} from "@/api/system/ticket_prices";

export default {
  name: "Ticket_services",
  data() {
    return {
      // 表格数据
      selectedRow: [],
      ticketsType: [],
      peopleCount: 0,
      totalCount: 10,

      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      isOut: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 票务表格数据
      ticket_servicesList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      open2: false,
      open3: false,
      open4: false,
      open5: false,

      // 门票类型时间范围
      daterangeScheduledDate: [],
      // 门票类型时间范围
      daterangeVisitorInTime: [],
      // 门票类型时间范围
      daterangeVisitorOutTime: [],
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        ticketId: null,
        cnId: null,
        scheduledDate: null,
        visitorInTime: null,
        visitorOutTime: null,
        stateVisit: null,
        typeTicket: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        field101: [{
          required: true,
          message: '请下拉选择',
          trigger: 'change'
        }],
        visitorsName: [
          { required: true, message: '请输入姓名', trigger: 'blur' },
        ],
        cnId: [
          { required: true, message: '请输入身份证号', trigger: 'blur' },
          {
            validator: this.validateCnId,
            trigger: 'blur',
          },
        ],
        phoneNumber: [
          { required: true, message: '请输入手机号', trigger: 'blur' },
          {
            validator: this.validatePhoneNumber,
            trigger: 'blur',
          },
        ],
        scheduledDate: [
          { required: true, message: '请选择预约日期', trigger: 'change' },
        ],
        typeTicket: [
          { required: true, message: '请选择门票类型', trigger: 'change' },
        ],
      },
      pickerOptions: {
        disabledDate: (time) => {
          return time.getTime() < Date.now() - 86400000; // 当前日期之前的日期都禁止选择
        },
      },
      field101Options: [{
        "label": "成人票",
        "value": 1
      }, {
        "label": "儿童票",
        "value": 2
      }, {
        "label": "学生票",
        "value": 3
      }, {
        "label": "VIP票",
        "value": 4
      }, {
        "label": "长者票",
        "value": 5
      }],
    };
  },
  created() {
    this.getList();
  },
  computed: {
    isFull() {
      return this.peopleCount >= this.totalCount;
    }
  },
  methods: {
    handleRowClick(row, column, event) {
      console.log(row);
      this.selectedRow = row;
    },
    /** 查询票务列表 */
    getList() {
      this.loading = true;
      this.queryParams.params = {};
      this.fetchPeopleData();
      if (null != this.daterangeScheduledDate && '' != this.daterangeScheduledDate) {
        this.queryParams.params["beginScheduledDate"] = this.daterangeScheduledDate[0];
        this.queryParams.params["endScheduledDate"] = this.daterangeScheduledDate[1];
      }
      if (null != this.daterangeVisitorInTime && '' != this.daterangeVisitorInTime) {
        this.queryParams.params["beginVisitorInTime"] = this.daterangeVisitorInTime[0];
        this.queryParams.params["endVisitorInTime"] = this.daterangeVisitorInTime[1];
      }
      if (null != this.daterangeVisitorOutTime && '' != this.daterangeVisitorOutTime) {
        this.queryParams.params["beginVisitorOutTime"] = this.daterangeVisitorOutTime[0];
        this.queryParams.params["endVisitorOutTime"] = this.daterangeVisitorOutTime[1];
      }
      listTicket_services(this.queryParams).then(response => {
        this.ticket_servicesList = response.rows;
        console.log(this.ticket_servicesList);
        this.total = response.total;
        this.loading = false;
      });
    },

    fetchPeopleData() {
      getPeopleCounts().then(response => {
        console.log(response);
        this.totalCount = response.rows[0].value;
        this.peopleCount = response.rows[1].value;
        this.ticketsType = response.rows[2];
        console.log(this.ticketsType);
      });
    },

    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    cancel2() {
      this.open2 = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id: null,
        ticketId: null,
        cnId: null,
        scheduledDate: null,
        visitorInTime: null,
        visitorOutTime: null,
        stateVisit: null,
        typeTicket: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.daterangeScheduledDate = [];
      this.daterangeVisitorInTime = [];
      this.daterangeVisitorOutTime = [];
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.fetchPeopleData();
      this.reset();
      this.open = true;
      this.title = "添加票务";
    },


    /** 预约按钮操作 */
    handleAppoint() {
      this.fetchPeopleData();
      this.reset();
      this.open = true;
      this.title = "游客预约";
    },

    handleCheckInfo() {
      this.fetchPeopleData();
      this.reset();
      this.open2 = true;
      this.title = "查看详情";
    },

    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getTicket_services(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改票务";
      });
    },

    /** 提交按钮 */
    submitForm() {
      this.fetchPeopleData();
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateTicket_services(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            appointTicket_services(this.form).then(response => {
              this.$modal.msgSuccess("预约成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },

    submitFormQuery() {
      this.fetchPeopleData();
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.cnId != null) {
            if(this.title == "查看详情"){
              checkInfoTicket_services(this.form.cnId).then(response => {
                console.log(response);
                this.getList();
                this.$modal.msgSuccess("查询成功");
                this.open2 = false;
                this.form = response;
                this.open3 = true;
              });
            }else if(this.title == "入园登记"){
              inParkTicket_services(this.form.cnId).then(response => {
                this.getList();
                this.$modal.msgSuccess("入园登记成功");
                this.open2 = false;
                this.form = response;
                // this.open4 = true;
              });
            }else if(this.title == "出园登记"){
              outParkTicket_services(this.form.cnId).then(response => {
                this.getList();
                this.$modal.msgSuccess("出园登记成功");
                this.open2 = false;
                this.form = response;
                // this.open5 = true;
              });
            };
          } else {
              this.$modal.msgWarning("请输入身份证号！");
          }
        }
      });
    },

    submitFormQuery2() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.cnId != null) {
            checkInfoTicket_services(this.form.cnId).then(response => {
              console.log(response);
              this.getList();
              this.$modal.msgSuccess("查询成功");
              this.open4 = false;
              this.form = response;
              this.open5 = true;
            });
          } else {
            this.$modal.msgWarning("请输入身份证号！");
          }
        }
      });
    },


    queryInfoDialog() {
      this.open3 = true;
    },



    //
    // submitForm2() {
    //   this.$refs['elForm'].validate(valid => {
    //     if (!valid) return
    //     // TODO 提交表单
    //   })
    // },
    // resetForm() {
    //   this.$refs['elForm'].resetFields()
    // },


    handleInPark() {
      this.fetchPeopleData();
      if ( this.isFull ) {
        this.$message.warning("预约人数已满");
      } else {
        this.reset();
        this.open2 = true;
        this.title = "入园登记";
      }
      // this.$modal.confirm('是否确认游客入园？').then(() => {
      //   ids.forEach(id => {  // 遍历 ids 数组
      //     inParkTicket_services(cnId)
      //       .then(() => {
      //         this.getList();
      //         this.$modal.msgSuccess("入园成功");
      //       });
      //   });
      // }).catch(() => {});
    },


    handleOutPark() {
      this.fetchPeopleData();
      this.reset();
      this.title = "出园登记";
      this.open2 = true;
      // this.$modal.confirm('是否确认游客出园？').then(function() {
      //   return outParkTicket_services(this.id);
      // }).then(() => {
      //   this.getList();
      //   this.$modal.msgSuccess("出园成功");
      // }).catch(() => {});
    },


    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除票务编号为"' + ids + '"的数据项？').then(function() {
        return delTicket_services(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/ticket_services/export', {
        ...this.queryParams
      }, `ticket_services_${new Date().getTime()}.xlsx`)
    },
    validateCnId(rule, value, callback) {
      // 验证身份证号格式
      const pattern = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
      if (!pattern.test(value)) {
        callback(new Error('请输入有效的中华人民共和国身份证号'));
      } else {
        callback();
      }
    },
    validatePhoneNumber(rule, value, callback) {
      // 验证手机号格式
      const pattern = /^1[0-9]{10}$/;
      if (!pattern.test(value)) {
        callback(new Error('请输入有效的手机号'));
      } else {
        callback();
      }
    },
  }
};
</script>

<style lang="scss" scoped>
.container {
  width: 800px; /* 宽度扩大为 800px */
  height: 600px; /* 高度扩大为 600px */
  border: 1px solid #ccc;
  border-radius: 5px;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  align-items: center;
  margin: 0 auto; /* 水平居中对齐 */
  transform: scale(0.9); /* 缩小为原来的 90% */
}
.full {
  background-color: lightcoral;
  color: white;
}
.not-full {
  background-color: lightgreen;
}
.peopleInfo {
  width: 80px;
  height: 50px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  border: 1px solid #ccc;
  border-radius: 5px;
  font-size: 15px;
  font-weight: bold;
  text-align: center;
  margin-left: 600px;
}
</style>
