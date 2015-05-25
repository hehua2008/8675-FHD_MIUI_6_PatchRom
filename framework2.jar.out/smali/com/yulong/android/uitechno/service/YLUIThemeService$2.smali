.class Lcom/yulong/android/uitechno/service/YLUIThemeService$2;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "UitechnoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulong/android/uitechno/service/YLUIThemeService;->loadThemeProperty()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/uitechno/service/YLUIThemeService;


# direct methods
.method constructor <init>(Lcom/yulong/android/uitechno/service/YLUIThemeService;)V
    .locals 0

    .prologue
    .line 974
    iput-object p1, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService$2;->this$0:Lcom/yulong/android/uitechno/service/YLUIThemeService;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 979
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 980
    const-string v2, "item"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 981
    const-string v2, "key"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, "key":Ljava/lang/String;
    const-string v2, "value"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 983
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService$2;->this$0:Lcom/yulong/android/uitechno/service/YLUIThemeService;

    # getter for: Lcom/yulong/android/uitechno/service/YLUIThemeService;->mThemePropertyMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->access$000(Lcom/yulong/android/uitechno/service/YLUIThemeService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method
