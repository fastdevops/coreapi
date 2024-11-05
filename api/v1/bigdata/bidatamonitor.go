package bigdata

import (
	"github.com/fastdevops/coreapi/global"
	"github.com/fastdevops/coreapi/model/bigdata"
	bigdataReq "github.com/fastdevops/coreapi/model/bigdata/request"
	"github.com/fastdevops/coreapi/model/common/response"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type BigdataMonitorApi struct{}

// CreateBigdataMonitor 创建大数据集群监控
// @Tags BigdataMonitor
// @Summary 创建大数据集群监控
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bigdata.BigdataMonitor true "创建大数据集群监控"
// @Success 200 {object} response.Response{msg=string} "创建成功"
// @Router /bigdatamonitor/createBigdataMonitor [post]
func (bigdatamonitorApi *BigdataMonitorApi) CreateBigdataMonitor(c *gin.Context) {
	var bigdatamonitor bigdata.BigdataMonitor
	err := c.ShouldBindJSON(&bigdatamonitor)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = bigdatamonitorService.CreateBigdataMonitor(&bigdatamonitor)
	if err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败:"+err.Error(), c)
		return
	}
	response.OkWithMessage("创建成功", c)
}

// DeleteBigdataMonitor 删除大数据集群监控
// @Tags BigdataMonitor
// @Summary 删除大数据集群监控
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bigdata.BigdataMonitor true "删除大数据集群监控"
// @Success 200 {object} response.Response{msg=string} "删除成功"
// @Router /bigdatamonitor/deleteBigdataMonitor [delete]
func (bigdatamonitorApi *BigdataMonitorApi) DeleteBigdataMonitor(c *gin.Context) {
	ID := c.Query("ID")
	err := bigdatamonitorService.DeleteBigdataMonitor(ID)
	if err != nil {
		global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败:"+err.Error(), c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

// DeleteBigdataMonitorByIds 批量删除大数据集群监控
// @Tags BigdataMonitor
// @Summary 批量删除大数据集群监控
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{msg=string} "批量删除成功"
// @Router /bigdatamonitor/deleteBigdataMonitorByIds [delete]
func (bigdatamonitorApi *BigdataMonitorApi) DeleteBigdataMonitorByIds(c *gin.Context) {
	IDs := c.QueryArray("IDs[]")
	err := bigdatamonitorService.DeleteBigdataMonitorByIds(IDs)
	if err != nil {
		global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败:"+err.Error(), c)
		return
	}
	response.OkWithMessage("批量删除成功", c)
}

// UpdateBigdataMonitor 更新大数据集群监控
// @Tags BigdataMonitor
// @Summary 更新大数据集群监控
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bigdata.BigdataMonitor true "更新大数据集群监控"
// @Success 200 {object} response.Response{msg=string} "更新成功"
// @Router /bigdatamonitor/updateBigdataMonitor [put]
func (bigdatamonitorApi *BigdataMonitorApi) UpdateBigdataMonitor(c *gin.Context) {
	var bigdatamonitor bigdata.BigdataMonitor
	err := c.ShouldBindJSON(&bigdatamonitor)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = bigdatamonitorService.UpdateBigdataMonitor(bigdatamonitor)
	if err != nil {
		global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败:"+err.Error(), c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

// FindBigdataMonitor 用id查询大数据集群监控
// @Tags BigdataMonitor
// @Summary 用id查询大数据集群监控
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query bigdata.BigdataMonitor true "用id查询大数据集群监控"
// @Success 200 {object} response.Response{data=bigdata.BigdataMonitor,msg=string} "查询成功"
// @Router /bigdatamonitor/findBigdataMonitor [get]
func (bigdatamonitorApi *BigdataMonitorApi) FindBigdataMonitor(c *gin.Context) {
	ID := c.Query("ID")
	rebigdatamonitor, err := bigdatamonitorService.GetBigdataMonitor(ID)
	if err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败:"+err.Error(), c)
		return
	}
	response.OkWithData(rebigdatamonitor, c)
}

// GetBigdataMonitorList 分页获取大数据集群监控列表
// @Tags BigdataMonitor
// @Summary 分页获取大数据集群监控列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query bigdataReq.BigdataMonitorSearch true "分页获取大数据集群监控列表"
// @Success 200 {object} response.Response{data=response.PageResult,msg=string} "获取成功"
// @Router /bigdatamonitor/getBigdataMonitorList [get]
func (bigdatamonitorApi *BigdataMonitorApi) GetBigdataMonitorList(c *gin.Context) {
	var pageInfo bigdataReq.BigdataMonitorSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := bigdatamonitorService.GetBigdataMonitorInfoList(pageInfo)
	if err != nil {
		global.GVA_LOG.Error("获取失败!", zap.Error(err))
		response.FailWithMessage("获取失败:"+err.Error(), c)
		return
	}
	response.OkWithDetailed(response.PageResult{
		List:     list,
		Total:    total,
		Page:     pageInfo.Page,
		PageSize: pageInfo.PageSize,
	}, "获取成功", c)
}

// GetBigdataMonitorPublic 不需要鉴权的大数据集群监控接口
// @Tags BigdataMonitor
// @Summary 不需要鉴权的大数据集群监控接口
// @accept application/json
// @Produce application/json
// @Param data query bigdataReq.BigdataMonitorSearch true "分页获取大数据集群监控列表"
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /bigdatamonitor/getBigdataMonitorPublic [get]
func (bigdatamonitorApi *BigdataMonitorApi) GetBigdataMonitorPublic(c *gin.Context) {
	// 此接口不需要鉴权
	// 示例为返回了一个固定的消息接口，一般本接口用于C端服务，需要自己实现业务逻辑
	bigdatamonitorService.GetBigdataMonitorPublic()
	response.OkWithDetailed(gin.H{
		"info": "不需要鉴权的大数据集群监控接口信息",
	}, "获取成功", c)
}
