# 风格改造 PR 审查清单（语义不变）

适用于「人为化 / 去模板化」类改动：通过审阅再合并，避免误改行为或伤害可读性。

## 禁区（必须拒绝）

- 修改 **exported** 符号名、或 **error 字符串**、**HTTP 状态码与 body 约定**，除非明确走版本迁移文档。
- `errors.Is` / `errors.As` 可观察语义变化。
- 为“看起来更乱”而引入 **重复逻辑路径**、无测试覆盖的分支重组。
- 故意破坏 `gofmt` / 仓库约定的 `import` 分组。

## 允许（需在 PR 描述写清等价依据）

- **仅注释**：删除移植向说明、统一为 Go 工程语境；删复述代码的注释。
- **等价控制流**：早返回与等价 `if-else`；提取不改签名的 `unexported` 小函数。
- **非导出命名**：局部变量、receiver 别名在单文件内自洽。
- **测试组织**：表驱动与多 `TestXxx` 混用，但断言目标不变。

## 每 PR 必跑

- `gofmt` / `go vet ./...`
- 相关模块 `go test ./...`；改动含 `core`、`manager`、`integrations` 时考虑 `go test -race`（若可接受耗时）。

## 敏感路径（改前先看测试）

- `core/context`：`ReadTokenFromRequest`、`ResolveTokenName`
- `integrations/*/plugin.go`：`TokenInterceptor`、`PathAuthMiddleware`、`AuthMiddleware`
