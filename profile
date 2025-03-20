<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Happy - Profile | Social Network</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Roboto', 'Inter', sans-serif;
            transition: all 0.3s ease;
        }

        body {
            background-color: #121212;
            color: #e0e0e0;
        }

        body.light-mode {
            background-color: #f5f5f5;
            color: #212121;
        }

        /* Header */
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #1a1a1a;
            padding: 15px 25px;
            border-bottom: 1px solid #333;
            position: sticky;
            top: 0;
            z-index: 100;
        }

        body.light-mode .header {
            background-color: #fff;
            border-bottom: 1px solid #e0e0e0;
        }

        .header .logo {
            font-size: 26px;
            font-weight: 700;
            color: #1DA1F2;
        }

        .header .search-bar {
            flex: 1;
            margin: 0 25px;
            position: relative;
        }

        .header .search-bar input {
            width: 100%;
            padding: 10px 20px;
            border: 1px solid transparent;
            background-color: #2a2a2a;
            color: #e0e0e0;
            border-radius: 25px;
            font-size: 14px;
            outline: none;
        }

        body.light-mode .header .search-bar input {
            background-color: #f0f0f0;
            color: #212121;
        }

        .header .search-bar input:focus {
            border-color: #1DA1F2;
        }

        .header .search-bar input::placeholder {
            color: #a0a0a0;
        }

        body.light-mode .header .search-bar input::placeholder {
            color: #666;
        }

        .header .icons {
            display: flex;
            gap: 15px;
            align-items: center;
        }

        .header .icons i {
            font-size: 24px;
            color: #e0e0e0;
            cursor: pointer;
            transition: transform 0.2s ease;
        }

        body.light-mode .header .icons i {
            color: #212121;
        }

        .header .icons i:hover {
            transform: scale(1.1);
            color: #1DA1F2;
        }

        .header .profile {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .header .profile img {
            width: 36px;
            height: 36px;
            border-radius: 50%;
            border: 2px solid #1DA1F2;
            cursor: pointer;
            transition: transform 0.2s ease;
        }

        body.light-mode .header .profile img {
            border-color: #1DA1F2;
        }

        .header .profile img:hover {
            transform: scale(1.1);
        }

        .header .profile span {
            font-weight: 500;
            font-size: 14px;
            color: #e0e0e0;
        }

        body.light-mode .header .profile span {
            color: #212121;
        }

        .header .profile button {
            background-color: transparent;
            color: #1DA1F2;
            border: 1px solid #1DA1F2;
            padding: 6px 12px;
            border-radius: 20px;
            font-size: 12px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        body.light-mode .header .profile button {
            color: #1DA1F2;
            border-color: #1DA1F2;
        }

        .header .profile button:hover {
            background-color: #1DA1F2;
            color: #fff;
        }

        /* Profile Page */
        .profile-container {
            max-width: 1000px;
            margin: 25px auto;
            background-color: #1a1a1a;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
        }

        body.light-mode .profile-container {
            background-color: #fff;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }

        /* Profile Header */
        .profile-header {
            position: relative;
            height: 320px;
            background: linear-gradient(135deg, #2a2a2a, #444);
        }

        body.light-mode .profile-header {
            background: linear-gradient(135deg, #e0e0e0, #f0f0f0);
        }

        .profile-header .cover-photo {
            width: 100%;
            height: 220px;
            background: url('https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80') no-repeat center/cover;
            opacity: 0.9;
        }

        .profile-header .profile-pic {
            position: absolute;
            bottom: -60px;
            left: 60px;
            width: 160px;
            height: 160px;
            border-radius: 50%;
            border: 5px solid #1a1a1a;
            background: url('https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80') no-repeat center/cover;
            transition: transform 0.3s ease;
        }

        body.light-mode .profile-header .profile-pic {
            border-color: #fff;
        }

        .profile-header .profile-pic:hover {
            transform: scale(1.05);
        }

        /* Profile Info */
        .profile-info {
            padding: 80px 60px 25px;
            text-align: left;
        }

        .profile-info h1 {
            font-size: 30px;
            font-weight: 600;
            color: #e0e0e0;
            margin-bottom: 5px;
        }

        body.light-mode .profile-info h1 {
            color: #212121;
        }

        .profile-info .username {
            font-size: 16px;
            color: #a0a0a0;
            margin-bottom: 5px;
        }

        body.light-mode .profile-info .username {
            color: #666;
        }

        .profile-info .joined, .profile-info .location {
            font-size: 14px;
            color: #a0a0a0;
            margin-bottom: 10px;
        }

        body.light-mode .profile-info .joined, body.light-mode .profile-info .location {
            color: #666;
        }

        .profile-info .bio {
            font-size: 14px;
            color: #d0d0d0;
            line-height: 1.6;
            margin: 15px 0 25px;
            max-width: 600px;
        }

        body.light-mode .profile-info .bio {
            color: #333;
        }

        .profile-info .stats {
            display: flex;
            gap: 40px;
            margin-bottom: 25px;
        }

        .profile-info .stats div {
            text-align: center;
            cursor: pointer;
        }

        .profile-info .stats div p {
            font-size: 20px;
            font-weight: 700;
            color: #1DA1F2;
        }

        body.light-mode .profile-info .stats div p {
            color: #1DA1F2;
        }

        .profile-info .stats div span {
            font-size: 13px;
            color: #a0a0a0;
        }

        body.light-mode .profile-info .stats div span {
            color: #666;
        }

        .profile-info .actions {
            display: flex;
            gap: 15px;
        }

        .profile-info .actions button {
            padding: 10px 25px;
            border: 1px solid #1DA1F2;
            border-radius: 25px;
            font-size: 14px;
            cursor: pointer;
            background-color: transparent;
            color: #1DA1F2;
            transition: all 0.3s ease;
        }

        body.light-mode .profile-info .actions button {
            border-color: #1DA1F2;
            color: #1DA1F2;
        }

        .profile-info .actions button:hover {
            background-color: #1DA1F2;
            color: #fff;
        }

        /* Tabs */
        .tabs {
            display: flex;
            border-bottom: 1px solid #333;
            padding: 0 60px;
            background-color: #1a1a1a;
        }

        body.light-mode .tabs {
            border-bottom-color: #ddd;
            background-color: #fff;
        }

        .tabs button {
            flex: 1;
            padding: 15px 0;
            border: none;
            background: none;
            font-size: 16px;
            font-weight: 500;
            color: #a0a0a0;
            cursor: pointer;
            position: relative;
        }

        body.light-mode .tabs button {
            color: #666;
        }

        .tabs button.active {
            color: #1DA1F2;
            border-bottom: 3px solid #1DA1F2;
        }

        body.light-mode .tabs button.active {
            color: #1DA1F2;
            border-bottom-color: #1DA1F2;
        }

        .tabs button:hover {
            color: #1DA1F2;
        }

        /* Posts Grid */
        .posts-grid {
            padding: 30px 60px;
            column-count: 3;
            column-gap: 15px;
        }

        .posts-grid .post {
            break-inside: avoid;
            margin-bottom: 15px;
            background: url('https://via.placeholder.com/300') no-repeat center/cover;
            border-radius: 8px;
            height: 300px;
            cursor: pointer;
            transition: transform 0.3s ease;
            position: relative;
        }

        .posts-grid .post:hover {
            transform: scale(1.03);
        }

        .posts-grid .post:hover::after {
            content: '❤️ 320K 💬 120';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.6);
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 16px;
            gap: 15px;
            opacity: 1;
        }

        body.light-mode .posts-grid .post:hover::after {
            background: rgba(255, 255, 255, 0.6);
            color: #212121;
        }

        /* Post Creation Button */
        .post-creation-btn {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background-color: #1DA1F2;
            color: #fff;
            width: 60px;
            height: 60px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 28px;
            cursor: pointer;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s ease;
        }

        .post-creation-btn:hover {
            transform: rotate(90deg);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .header {
                padding: 10px 15px;
            }

            .header .search-bar {
                margin: 0 15px;
            }

            .header .icons {
                display: none; /* Collapse into hamburger menu */
            }

            .profile-container {
                margin: 15px;
            }

            .profile-header {
                height: 280px;
            }

            .profile-header .profile-pic {
                width: 120px;
                height: 120px;
                bottom: -50px;
                left: 30px;
            }

            .profile-info {
                padding: 60px 30px 20px;
            }

            .profile-info h1 {
                font-size: 26px;
            }

            .posts-grid {
                padding: 20px 30px;
                column-count: 2;
            }
        }

        @media (max-width: 480px) {
            .posts-grid {
                column-count: 1;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <div class="header">
        <div class="logo">Social Network</div>
        <div class="search-bar">
            <input type="text" placeholder="🔍 Search" aria-label="Search">
        </div>
        <div class="icons">
            <i title="Home">🏠</i>
            <i title="Videos">📹</i>
            <i title="Notifications">🔔</i>
            <i title="Messages">💬</i>
            <label class="theme-toggle"><input type="checkbox" id="theme" hidden> 🌙</label>
        </div>
        <div class="profile">
            <img src="https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80" alt="Profile">
            <span>HAPPY</span>
            <button title="Switch Account">🔄</button>
        </div>
    </div>

    <!-- Profile Page -->
    <div class="profile-container">
        <!-- Profile Header -->
        <div class="profile-header">
            <div class="cover-photo"></div>
            <div class="profile-pic"></div>
        </div>

        <!-- Profile Info -->
        <div class="profile-info">
            <h1>Happy</h1>
            <p class="username">@happy</p>
            <p class="joined">Joined: March 2025</p>
            <p class="location">Location: Not specified</p>
            <p class="bio">Building a social networking startup.</p>
            <div class="stats">
                <div>
                    <p>5</p>
                    <span>POSTS</span>
                </div>
                <div>
                    <p>2002</p>
                    <span>FOLLOWERS</span>
                </div>
                <div>
                    <p>29</p>
                    <span>FOLLOWING</span>
                </div>
            </div>
            <div class="actions">
                <button class="edit-btn">✏️ Edit</button>
                <button class="follow-btn">Follow</button>
            </div>
        </div>

        <!-- Tabs -->
        <div class="tabs">
            <button class="active">📷 Posts</button>
            <button>👥 Followers</button>
            <button>➡️ Following</button>
        </div>

        <!-- Posts Grid -->
        <div class="posts-grid">
            <div class="post"></div>
            <div class="post"></div>
            <div class="post"></div>
            <div class="post"></div>
            <div class="post"></div>
        </div>
    </div>

    <!-- Post Creation Button -->
    <div class="post-creation-btn">+</div>

    <script>
        const themeToggle = document.getElementById('theme');
        themeToggle.addEventListener('change', () => {
            document.body.classList.toggle('light-mode');
            themeToggle.parentElement.textContent = document.body.classList.contains('light-mode') ? '🌙' : '☀️';
        });
    </script>
</body>
</html>
