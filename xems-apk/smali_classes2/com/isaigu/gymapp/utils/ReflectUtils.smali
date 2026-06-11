.class public Lcom/isaigu/gymapp/utils/ReflectUtils;
.super Ljava/lang/Object;
.source "ReflectUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/utils/ReflectUtils$Test;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    if-eqz p0, :cond_23

    if-eqz p1, :cond_23

    :try_start_5
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_23

    .line 73
    :cond_e
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/utils/ReflectUtils;->getFieldSuper(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 74
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_1d

    .line 75
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_1e

    return-object v0

    .line 80
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_1d
    goto :goto_22

    .line 78
    :catch_1e
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_22
    return-object v0

    .line 71
    :cond_23
    :goto_23
    return-object v0
.end method

.method private static getFieldSuper(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    .line 122
    .local v0, "field":Ljava/lang/reflect/Field;
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    .line 123
    :goto_6
    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_6

    .line 124
    :goto_9
    if-nez v0, :cond_f

    .line 125
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 127
    :cond_f
    if-nez v0, :cond_15

    const-class v1, Ljava/lang/Object;

    if-ne p0, v1, :cond_1

    .line 128
    :cond_15
    return-object v0
.end method

.method private static getFieldSuper(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/utils/ReflectUtils;->getFieldSuper(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static getObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    if-eqz p0, :cond_23

    if-eqz p1, :cond_23

    :try_start_5
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_23

    .line 57
    :cond_e
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/utils/ReflectUtils;->getFieldSuper(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 58
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_1d

    .line 59
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_1e

    return-object v0

    .line 64
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_1d
    goto :goto_22

    .line 62
    :catch_1e
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_22
    return-object v0

    .line 55
    :cond_23
    :goto_23
    return-object v0
.end method

.method public static invokeClassMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 13
    const/4 v0, 0x0

    if-eqz p0, :cond_32

    if-eqz p1, :cond_32

    :try_start_5
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_32

    .line 16
    :cond_e
    array-length v1, p2

    new-array v1, v1, [Ljava/lang/Class;

    .line 17
    .local v1, "parameterType":[Ljava/lang/Class;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    array-length v3, p2

    if-ge v2, v3, :cond_20

    .line 18
    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 17
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 20
    .end local v2    # "i":I
    :cond_20
    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 21
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 22
    invoke-virtual {v2, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_2d

    return-object v0

    .line 23
    .end local v1    # "parameterType":[Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_2d
    move-exception v1

    .line 24
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0

    .line 14
    :cond_32
    :goto_32
    return-object v0
.end method

.method public static invokeObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 31
    const/4 v0, 0x0

    if-eqz p0, :cond_3a

    if-eqz p1, :cond_3a

    :try_start_5
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3a

    .line 34
    :cond_e
    const/4 v1, 0x0

    .line 35
    .local v1, "parameterType":[Ljava/lang/Class;
    if-eqz p2, :cond_24

    .line 36
    array-length v2, p2

    new-array v2, v2, [Ljava/lang/Class;

    move-object v1, v2

    .line 37
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    array-length v3, p2

    if-ge v2, v3, :cond_24

    .line 38
    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 41
    .end local v2    # "i":I
    :cond_24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 42
    .local v2, "clazz":Ljava/lang/Class;
    invoke-virtual {v2, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 43
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 44
    invoke-virtual {v3, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_34} :catch_35

    return-object v0

    .line 45
    .end local v1    # "parameterType":[Ljava/lang/Class;
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_35
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0

    .line 32
    :cond_3a
    :goto_3a
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7
    .param p0, "args"    # [Ljava/lang/String;

    .line 133
    new-instance v0, Lcom/isaigu/gymapp/utils/ReflectUtils$Test;

    invoke-direct {v0}, Lcom/isaigu/gymapp/utils/ReflectUtils$Test;-><init>()V

    .line 135
    .local v0, "test":Lcom/isaigu/gymapp/utils/ReflectUtils$Test;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v2, Lcom/isaigu/gymapp/utils/ReflectUtils$Test;

    const-string v3, "test"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/utils/ReflectUtils;->getClassFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 136
    const-class v1, Lcom/isaigu/gymapp/utils/ReflectUtils$Test;

    const-string v2, "test2"

    invoke-static {v1, v3, v2}, Lcom/isaigu/gymapp/utils/ReflectUtils;->setStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v2, Lcom/isaigu/gymapp/utils/ReflectUtils$Test;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/utils/ReflectUtils;->getClassFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 139
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "value"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/utils/ReflectUtils;->getObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 140
    const-string v1, "value2"

    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/utils/ReflectUtils;->setObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/utils/ReflectUtils;->getObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 143
    const-class v1, Lcom/isaigu/gymapp/utils/ReflectUtils$Test;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "hello"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "operateValue"

    invoke-static {v1, v4, v3}, Lcom/isaigu/gymapp/utils/ReflectUtils;->invokeClassMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "getValueTest"

    invoke-static {v0, v3, v2}, Lcom/isaigu/gymapp/utils/ReflectUtils;->invokeObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 146
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "a"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/utils/ReflectUtils;->getObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 147
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/utils/ReflectUtils;->setObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/utils/ReflectUtils;->getObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public static setObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 86
    if-eqz p0, :cond_20

    if-eqz p1, :cond_20

    :try_start_4
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_20

    .line 89
    :cond_d
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/utils/ReflectUtils;->getFieldSuper(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 90
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_1a

    .line 91
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 92
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_1b

    .line 96
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_1a
    goto :goto_1f

    .line 94
    :catch_1b
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void

    .line 87
    :cond_20
    :goto_20
    return-void
.end method

.method public static setStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 101
    if-eqz p0, :cond_21

    if-eqz p1, :cond_21

    :try_start_4
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_21

    .line 104
    :cond_d
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/utils/ReflectUtils;->getFieldSuper(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 105
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_1b

    .line 106
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_1c

    .line 111
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_1b
    goto :goto_20

    .line 109
    :catch_1c
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_20
    return-void

    .line 102
    :cond_21
    :goto_21
    return-void
.end method
