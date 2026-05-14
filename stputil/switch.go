package stputil

import (
	"context"
)

type ctxKeySwitch struct{}

// SwitchTo derives a child context that temporarily impersonates loginID | 临时切换身份
func SwitchTo(parent context.Context, loginID interface{}) context.Context {
	return context.WithValue(parent, ctxKeySwitch{}, toString(loginID))
}

// IsSwitch reports whether ctx carries a switched loginId | 是否处于切换状态
func IsSwitch(ctx context.Context) bool {
	v, ok := ctx.Value(ctxKeySwitch{}).(string)
	return ok && v != ""
}

// GetSwitchLoginID returns switched loginId or empty | 获取切换后的 loginId
func GetSwitchLoginID(ctx context.Context) string {
	if v, ok := ctx.Value(ctxKeySwitch{}).(string); ok {
		return v
	}
	return ""
}

// SwitchToFunc runs fn with a switched-identity child context | lambda 切换
func SwitchToFunc(parent context.Context, loginID interface{}, fn func(ctx context.Context) error) error {
	return fn(SwitchTo(parent, loginID))
}
