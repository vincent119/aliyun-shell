# aliyun-shell

阿里雲命令列工具集，提供便捷的 Shell 函數來管理阿里雲資源。

## 功能特點

- 查詢區域（Region）和可用區（Zone）資訊
- 管理 ECS 實例
- 管理負載均衡器（SLB）
- 管理安全群組
- 管理虛擬交換機（VSwitch）
- 管理金鑰對（KeyPair）

## 前置需求

- 已安裝阿里雲 CLI 工具
- 已安裝 `jq` JSON 處理工具
- 已配置阿里雲認證憑證

## 安裝

```bash
# 載入函數庫
source Aliyun-shell.sh
```

## 使用方式

### 區域管理

```bash
# 列出所有區域和可用區
ali_region_AZ_list

# 列出所有區域
ali_region_list

# 列出區域端點
ali_region_endpoint

# 設定區域（根據環境）
ali_region_set dev   # 設定為開發環境（香港）
ali_region_set uat   # 設定為 UAT 環境（東京）
ali_region_set prod  # 設定為生產環境（馬尼拉）
```

### ECS 實例管理

```bash
# 列出 ECS 實例
ali_ecs_list

# 列出實例類型規格
ali_ecs_instanceType
```

### 網路資源管理

```bash
# 列出負載均衡器
ali_slb_list

# 列出安全群組
ali_securitygroup_list

# 列出虛擬交換機
ali_vswitch_list

# 列出金鑰對
ali_keyPair_list
```

## 環境對應

| 環境 | 區域 ID | 位置 |
|------|---------|------|
| dev/stg | cn-hongkong | 香港 |
| uat | ap-northeast-1 | 東京 |
| prod | ap-southeast-6 | 馬尼拉 |

## 注意事項

- 使用前需先執行 `ali_region_set` 設定 `ALIYUN_REGION` 環境變數
- 所有函數都依賴於已設定的區域變數

## 授權

請參考專案授權條款。
