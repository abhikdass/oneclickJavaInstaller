# 🚀 OneClick Java 17 Installer for Windows

A **one-click portable Java JDK 17 installer for Windows** that automatically downloads, extracts, configures, and verifies Java — **no MSI installer, no Oracle login, no GitHub download dependency issues**.

This project is built to fix common Java-related errors instantly.

---

## ❌ Common Problems Fixed

```
Java JDK 17 required
JAVA_HOME is not set
Could not find files for the given pattern(s)
Gradle requires Java 17
```

---

## ✨ Features

- ✅ One-click `.bat` execution  
- ✅ Portable **ZIP-based Java installation**  
- ✅ Uses **Eclipse Temurin (OpenJDK 17)**  
- ✅ No Oracle account required  
- ✅ No MSI / EXE installer  
- ✅ Automatically sets `JAVA_HOME`  
- ✅ Updates system `PATH`  
- ✅ Works even when GitHub downloads are blocked  
- ✅ Windows 10 & Windows 11 supported  

---

## 🛠 How It Works

1. Downloads Java 17 from **Adoptium’s official API**
2. Extracts Java to `C:\Java\`
3. Automatically sets:
   - `JAVA_HOME`
   - `PATH`
4. Verifies Java installation

---

## ▶ Usage

### Step 1: Clone the repository
```bash
git clone https://github.com/abhikdass/oneclickJavaInstaller.git
cd oneclickJavaInstaller
```

### Step 2: Run the script
```cmd
Right-click setup-java17-portable.bat → Run as Administrator
```

> ⚠️ Restart your terminal or PC after execution to apply environment variables.

---

## 🧪 Verify Installation

```cmd
java -version
echo %JAVA_HOME%
```

Expected output:
```
openjdk version "17.x.x"
```

---

## 📂 Installation Path

```
C:\Java\jdk-17\
```

---

## 🧰 Use Cases

- Gradle / Maven builds  
- Android Studio & SDK tools  
- Spring Boot applications  
- Jenkins / CI pipelines  
- Systems where MSI installers fail  
- Corporate or restricted networks  

---

## 🔒 Security & Transparency

- No bundled binaries  
- No telemetry or background services  
- Downloads only from **official Adoptium API**
- Fully open-source and auditable  

---

## 🧠 Why Portable?

Traditional Java installers often fail due to:
- Blocked MSI installers
- TLS / proxy issues
- Corporate firewalls
- Oracle account restrictions

This script avoids all of them.

---

## 📜 License

MIT License

---

## ⭐ Support

If this helped you, please ⭐ star the repository.

---

### Made with ❤️ by Abhik Das
