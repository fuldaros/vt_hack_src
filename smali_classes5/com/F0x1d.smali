.class public Lcom/F0x1d;
.super Ljava/lang/Object;
.source "F0x1d.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/F0x1d$CheckGalochniki;
    }
.end annotation


# static fields
.field private static app:Landroid/app/Application;

.field private static context:Landroid/content/Context;

.field private static galo4ki:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/F0x1d;->galo4ki:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/F0x1d;->galo4ki:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/F0x1d;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/F0x1d;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt()Z
    .locals 1

    .prologue
    .line 103
    const-string v0, "encrypt"

    invoke-static {v0}, Lcom/F0x1d;->getBoolFalse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static encrypted(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v0, "VT0ST3RS "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " VT0ST3RS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAccent()I
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/F0x1d;->nightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const v0, -0xd3d2d2

    .line 86
    :goto_0
    return v0

    :cond_0
    const v0, -0xae7e48

    goto :goto_0
.end method

.method public static getActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "write"

    invoke-static {v0}, Lcom/F0x1d;->getBoolFalse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "messages.setFlex"

    .line 140
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "messages.setActivity"

    goto :goto_0
.end method

.method public static getBoolFalse(Ljava/lang/String;)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {}, Lcom/F0x1d;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBoolTrue(Ljava/lang/String;)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-static {}, Lcom/F0x1d;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/F0x1d;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getMarkAsRead()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "read"

    invoke-static {v0}, Lcom/F0x1d;->getBoolFalse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "messages.markAsFlex"

    .line 147
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "messages.markAsRead"

    goto :goto_0
.end method

.method public static getOnline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string v0, "online"

    invoke-static {v0}, Lcom/F0x1d;->getBoolFalse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "account.setFlex"

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "account.setOnline"

    goto :goto_0
.end method

.method public static getPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/F0x1d;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getStoriesRead()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "read_s"

    invoke-static {v0}, Lcom/F0x1d;->getBoolFalse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "stories.markFlex"

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "stories.markSeen"

    goto :goto_0
.end method

.method public static hasGalo4ka(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 65
    sget-object v0, Lcom/F0x1d;->galo4ki:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public static hasGalo4ka(Lorg/json/JSONObject;)Z
    .locals 4
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    const-string v0, "verified"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 75
    :goto_0
    return v0

    .line 71
    :cond_0
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "group"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "type"

    .line 72
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "page"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "id"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 71
    :goto_1
    invoke-static {v0}, Lcom/F0x1d;->hasGalo4ka(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 73
    goto :goto_0

    .line 72
    :cond_2
    const-string v0, "id"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    neg-int v0, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 75
    goto :goto_0
.end method

.method public static hasInternet()Z
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/F0x1d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/F0x1d;->isMobileConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/F0x1d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/F0x1d;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hideStories()Z
    .locals 1

    .prologue
    .line 114
    const-string v0, "hide_s"

    invoke-static {v0}, Lcom/F0x1d;->getBoolFalse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 2
    .param p0, "app_"    # Landroid/app/Application;

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/F0x1d;->context:Landroid/content/Context;

    .line 54
    sput-object p0, Lcom/F0x1d;->app:Landroid/app/Application;

    .line 56
    invoke-static {}, Lcom/F0x1d;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lcom/F0x1d$CheckGalochniki;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/F0x1d$CheckGalochniki;-><init>(Lcom/F0x1d$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/F0x1d$CheckGalochniki;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 58
    :cond_0
    return-void
.end method

.method public static isMobileConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 221
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 222
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 223
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 215
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 216
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 217
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static nightTheme()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 79
    sget-object v1, Lcom/F0x1d;->context:Landroid/content/Context;

    const-string v2, "vk_theme_helper"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "current_theme"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static sendOffline()V
    .locals 1

    .prologue
    .line 118
    const-string v0, "online"

    invoke-static {v0}, Lcom/F0x1d;->getBoolFalse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Lcom/vtosters/android/data/k;->b()V

    .line 120
    :cond_0
    return-void
.end method

.method public static sendToast(Ljava/lang/String;)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 151
    sget-object v0, Lcom/F0x1d;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 152
    return-void
.end method

.method public static startProxyActivity()V
    .locals 4

    .prologue
    .line 171
    sget-object v0, Lcom/F0x1d;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/F0x1d;->context:Landroid/content/Context;

    const-class v3, Lcom/ui/ProxyActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 172
    return-void
.end method

.method public static toBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT0ST3RS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " VT0ST3RS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "base64"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p0}, Lcom/F0x1d;->encrypted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "VT0ST3RS "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " VT0ST3RS"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decoded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 99
    .end local p0    # "base64":Ljava/lang/String;
    :cond_0
    return-object p0
.end method
