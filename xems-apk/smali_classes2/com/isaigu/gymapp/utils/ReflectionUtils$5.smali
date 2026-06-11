.class final Lcom/isaigu/gymapp/utils/ReflectionUtils$5;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"

# interfaces
.implements Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/utils/ReflectionUtils;->getUniqueDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$methods:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    .line 353
    iput-object p1, p0, Lcom/isaigu/gymapp/utils/ReflectionUtils$5;->val$methods:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doWith(Ljava/lang/reflect/Method;)V
    .registers 8
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "knownSignature":Z
    const/4 v1, 0x0

    .line 357
    .local v1, "methodBeingOverriddenWithCovariantReturnType":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/isaigu/gymapp/utils/ReflectionUtils$5;->val$methods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 359
    .local v2, "var4":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 360
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 361
    .local v3, "existingMethod":Ljava/lang/reflect/Method;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 362
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_4a

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 363
    move-object v1, v3

    .line 364
    goto :goto_4d

    .line 367
    :cond_4a
    const/4 v0, 0x1

    .line 368
    goto :goto_4d

    .line 370
    .end local v3    # "existingMethod":Ljava/lang/reflect/Method;
    :cond_4c
    goto :goto_8

    .line 372
    :cond_4d
    :goto_4d
    if-eqz v1, :cond_54

    .line 373
    iget-object v3, p0, Lcom/isaigu/gymapp/utils/ReflectionUtils$5;->val$methods:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 376
    :cond_54
    if-nez v0, :cond_61

    invoke-static {p1}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->isCglibRenamedMethod(Ljava/lang/reflect/Method;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 377
    iget-object v3, p0, Lcom/isaigu/gymapp/utils/ReflectionUtils$5;->val$methods:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_61
    return-void
.end method
