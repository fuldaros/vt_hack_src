.class public Lcom/F0x1dProxy;
.super Ljava/lang/Object;
.source "F0x1dProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProxyApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    const-string v0, "proxy"

    invoke-static {v0}, Lcom/F0x1d;->getBoolFalse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    const-string v0, "vk-api-proxy.xtrafrancyz.net"

    .line 11
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "api.vk.com"

    goto :goto_0
.end method

.method public static getProxyApiExec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "proxy"

    invoke-static {v0}, Lcom/F0x1d;->getBoolFalse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const-string v0, "https://vk-api-proxy.xtrafrancyz.net/method/execute"

    .line 18
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://api.vk.com/method/execute"

    goto :goto_0
.end method

.method public static getProxyOauth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "proxy"

    invoke-static {v0}, Lcom/F0x1d;->getBoolFalse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const-string v0, "vk-oauth-proxy.xtrafrancyz.net"

    .line 25
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "oauth.vk.com"

    goto :goto_0
.end method

.method public static getProxyOauthAuthorize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "proxy"

    invoke-static {v0}, Lcom/F0x1d;->getBoolFalse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "https://vk-oauth-proxy.xtrafrancyz.net/authorize"

    .line 53
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://oauth.vk.com/authorize"

    goto :goto_0
.end method

.method public static getProxyOauthAuthorizeClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "proxy"

    invoke-static {v0}, Lcom/F0x1d;->getBoolFalse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "https://vk-oauth-proxy.xtrafrancyz.net/authorize?client_id="

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://oauth.vk.com/authorize?client_id="

    goto :goto_0
.end method

.method public static getProxyOauthBlank()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "proxy"

    invoke-static {v0}, Lcom/F0x1d;->getBoolFalse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "https://vk-oauth-proxy.xtrafrancyz.net/blank.html"

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://oauth.vk.com/blank.html"

    goto :goto_0
.end method

.method public static getProxyOauthBlankRedirect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "proxy"

    invoke-static {v0}, Lcom/F0x1d;->getBoolFalse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "&redirect_uri=https://vk-oauth-proxy.xtrafrancyz.net/blank.html"

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "&redirect_uri=https://oauth.vk.com/blank.html"

    goto :goto_0
.end method

.method public static getProxyOauthHttps()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "proxy"

    invoke-static {v0}, Lcom/F0x1d;->getBoolFalse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "https://vk-oauth-proxy.xtrafrancyz.net"

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://oauth.vk.com"

    goto :goto_0
.end method
