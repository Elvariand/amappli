<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<div class="container-fluid d-flex flex-row-reverse flex-md-row justify-content-between justify-content-md-evenly align-items-center">

	<a href="<c:url value='/amappli/home'/>">
		<img src="<c:url value='/resources/img/logo_amappli_peach_2.png'/>" height="50" class="navbar-brand d-block d-md-none" />
	</a>

	<svg id="logo-header" height="50" min-height="50" viewBox="0 0 697 726" xmlns="http://www.w3.org/2000/svg" class="my-2 my-sm-0 d-none d-md-block">
        <path class="fill-300"
			d="M278.058 281.932L277.473 283.883C275.132 283.688 272.79 283.493 270.448 283.493C259.131 283.103 247.618 282.518 236.691 278.225C227.52 274.518 220.495 268.665 216.203 259.69C211.324 249.349 212.69 239.594 220.495 231.204C223.813 227.887 227.325 224.765 231.032 221.839C247.814 208.571 252.106 191.012 249.179 170.72C247.033 155.502 243.13 140.478 241.179 125.065C239.813 113.944 241.765 103.603 247.423 94.0425C250.155 89.3599 253.277 84.8723 255.619 80.1897C259.521 72.3854 257.57 66.7272 249.57 62.8251C239.813 57.7522 227.325 59.5082 219.13 67.1174C216.983 69.0685 215.032 71.2147 213.471 73.556C203.91 87.6039 191.031 97.3593 175.226 103.798C163.908 108.285 152.981 113.553 142.444 119.211L143.224 116.285C151.615 111.797 160.201 107.505 168.981 103.993C174.835 101.652 180.299 98.7251 185.763 95.9936C194.738 91.3109 202.153 84.8723 208.007 76.6778C210.934 72.3854 214.251 68.8734 217.959 65.3615C226.935 56.7767 243.326 55.606 253.472 62.4348C260.107 66.9223 262.058 72.9707 258.741 80.3848C257.765 82.7262 256.594 85.0675 255.033 87.0185C243.13 102.237 241.179 119.212 245.277 137.552C248.594 152.38 251.716 167.403 252.106 182.817C252.497 199.791 245.667 213.059 232.984 223.79C230.837 225.741 228.496 227.497 226.349 229.253C211.52 242.325 212.495 259.885 228.691 271.396C236.691 277.055 245.667 279.201 255.228 280.176C263.034 280.762 270.448 281.347 278.058 281.932Z" />
        <path class="fill-300"
			d="M431.235 429.239C411.331 445.629 392.014 462.603 370.745 477.041C347.719 492.455 322.743 500.844 294.644 499.869C277.863 499.283 260.887 499.674 244.106 499.869C224.983 500.064 206.446 497.332 188.689 490.699C164.494 481.529 139.517 475.675 114.736 468.651C97.3692 463.774 80.7833 457.725 64.7827 449.921L65.3681 447.384C76.1002 452.457 87.0274 456.945 98.3449 460.847C124.297 469.822 151.42 474.505 177.177 484.065C190.446 488.943 203.91 493.43 217.959 495.576C226.544 496.942 235.325 497.332 244.106 497.332C260.692 497.332 277.083 496.552 293.669 497.332C325.085 498.893 352.207 487.772 376.794 469.822C393.38 457.725 408.99 444.458 425.186 431.776C440.21 419.874 444.503 404.656 440.21 386.315C438.454 379.096 436.503 371.877 433.771 365.244H436.698C436.893 365.829 437.284 366.609 437.479 367.39C439.43 372.853 440.991 378.511 442.162 384.755C442.747 387.876 443.333 390.998 443.723 393.925C443.918 394.9 443.918 396.071 444.113 397.046C444.698 409.924 441.186 421.045 431.235 429.239Z" />
        <path class="fill-300"
			d="M274.156 298.321L273.571 300.663C268.887 300.663 264.204 300.858 259.326 301.248C249.375 302.028 239.423 301.443 229.667 298.907C211.129 294.224 200.007 281.152 192.007 264.763C186.738 254.032 182.641 242.715 181.275 230.814C179.519 215.595 184.592 205.645 198.446 201.938C202.544 200.767 206.641 199.596 210.349 197.84C221.666 192.963 227.91 185.353 227.325 173.061C226.74 158.428 222.447 145.356 211.91 134.82C206.251 129.357 199.422 127.991 191.812 129.357C182.445 131.113 174.445 135.601 166.835 140.868C158.054 146.722 149.274 152.575 140.103 158.038C137.566 159.599 134.834 160.77 132.297 161.94L133.078 158.818C136.785 157.258 140.298 155.111 143.81 152.965C153.957 146.527 163.713 139.893 174.055 133.649C182.641 128.577 191.812 125.26 201.958 127.016C208.007 127.991 213.081 130.918 216.788 135.796C226.545 148.283 231.033 162.526 229.862 178.329C229.081 188.67 222.642 195.109 213.666 199.206C208.983 201.352 203.714 202.523 198.836 204.474C187.519 208.571 182.25 215.01 183.616 226.911C186.348 250.52 194.348 272.177 213.276 287.981C223.032 296.175 234.935 298.321 247.228 299.102C256.399 299.687 265.18 298.907 274.156 298.321Z" />
        <path class="fill-300"
			d="M406.453 414.996C391.428 430.605 376.989 446.994 359.622 460.262C337.963 476.456 314.157 485.821 286.644 485.821C266.546 485.626 246.643 485.821 226.935 480.748C218.739 478.602 210.739 475.675 203.324 471.968C181.665 461.237 158.445 456.164 134.444 453.238C112.98 450.506 91.7106 446.019 71.222 438.605C70.0513 438.214 68.8805 437.629 67.7097 437.239L68.2951 434.702C83.5151 440.751 99.3206 444.848 115.516 447.775C127.419 450.116 139.322 451.677 151.42 453.238C170.933 455.774 188.885 462.603 206.446 470.798C225.179 479.577 245.082 483.089 265.765 483.285C280.985 483.48 296.401 484.26 311.426 480.748C334.061 475.48 353.183 463.774 369.964 448.36C381.282 438.019 391.819 426.898 402.356 415.777C415.234 402.119 417.771 387.876 410.356 372.853C408.99 369.926 407.039 367.585 405.087 365.244H408.6C410.551 367.39 412.112 369.926 413.283 372.853C420.307 388.267 417.966 402.9 406.453 414.996Z" />
        <path class="fill-300"
			d="M348.305 66.1419C348.305 72.5805 344.597 77.2631 337.963 79.4093C330.743 81.7506 323.328 81.5555 315.914 82.531C300.303 84.4821 286.449 90.5305 275.132 101.652C264.204 112.578 261.668 126.431 262.643 141.259C263.619 153.746 265.765 165.843 267.522 178.329C269.668 194.524 266.936 209.742 261.668 224.96C259.912 230.033 257.96 235.106 256.985 240.374C255.619 246.422 257.765 251.3 262.448 255.202C268.302 260.08 275.327 262.421 282.351 264.568L281.766 266.909C276.302 265.348 271.229 263.397 266.156 260.665C255.619 254.812 252.302 247.593 255.619 235.887C257.18 230.424 259.131 224.96 260.887 219.497C266.546 203.499 266.936 187.304 264.204 170.72C261.863 156.282 258.741 141.844 260.497 127.211C262.253 111.407 270.644 100.091 283.522 91.7012C296.401 83.1164 311.035 80.3848 326.06 79.2142C329.377 79.0191 332.695 78.2387 336.012 77.4582C342.646 75.5071 345.963 71.6049 345.768 65.7517C345.573 60.0935 341.28 55.606 334.646 54.4354C328.597 53.4598 322.548 53.85 316.499 54.4354C304.401 55.4109 292.693 53.4598 280.985 50.7283C268.302 47.6066 255.619 43.8995 242.74 41.7533C225.569 39.2169 210.739 43.3142 200.397 57.1669C186.738 75.7022 168.591 87.0186 148.103 95.018L148.883 91.8963C155.518 88.9696 162.152 86.043 168.591 82.7262C179.128 77.6533 187.324 69.4588 194.153 60.0935C209.763 39.0218 230.252 34.9245 254.253 41.3631C264.4 43.8995 274.546 46.4359 284.498 48.9723C295.815 51.7038 307.133 53.2647 319.036 52.0941C325.085 51.5087 331.524 50.9234 337.573 52.6794C344.988 54.8256 348.305 59.118 348.305 66.1419Z" />
        <path class="fill-300"
			d="M354.159 27.1202C350.842 26.3398 346.939 26.5349 342.451 27.7055C339.719 28.2908 336.792 28.8762 334.256 30.0468C310.84 39.4121 287.034 39.0218 262.839 33.5588C251.326 31.0224 239.813 28.6811 227.91 28.6811C214.837 28.486 203.91 33.3637 194.739 42.3387C190.055 46.8262 185.372 51.5088 181.08 56.3865C173.079 65.3615 163.518 71.4099 152.786 76.0925L153.566 72.9708C156.493 71.605 159.42 70.2393 162.152 68.6784C170.738 63.8007 177.372 56.5816 184.202 49.5577C190.446 43.1191 196.3 36.2903 204.3 31.9979C217.764 24.5838 232.203 25.5593 246.643 28.0957C259.131 30.2419 271.229 33.3637 283.912 34.7294C301.084 36.6805 317.475 33.7539 333.475 27.9006C338.548 25.9495 343.817 24.7789 349.085 24.3887C350.646 24.3887 352.207 24.3887 353.573 24.5838L354.159 27.1202Z" />
        <path class="fill-300"
			d="M373.086 101.847C369.379 105.944 363.33 107.7 355.134 107.505C346.744 107.31 338.353 105.944 329.963 105.164C318.645 103.993 307.718 104.578 297.376 109.651C285.864 115.309 280.01 124.87 278.254 137.357C276.693 148.478 278.644 159.209 280.4 169.94C282.937 186.134 283.912 202.328 283.132 218.717C282.742 227.107 284.303 234.131 287.815 239.984L287.034 243.496C282.937 238.228 280.79 232.179 281.181 225.156C282.156 199.986 278.644 175.208 275.717 150.234C274.156 135.796 277.083 121.943 289.181 111.797C297.962 104.383 308.499 102.822 319.426 102.042C330.353 101.261 341.28 103.798 352.012 104.578C361.964 105.359 368.598 103.408 372.306 97.9446L373.086 101.847Z" />
        <path class="fill-300"
			d="M456.796 450.116C453.284 450.311 449.577 450.897 446.064 452.067C432.6 456.165 420.893 463.384 409.77 471.578C392.599 484.26 375.623 496.552 355.915 505.137C339.329 512.356 321.962 514.502 304.011 513.527C284.888 512.356 265.961 512.356 247.033 514.112C220.691 516.648 195.129 515.087 169.957 506.112C151.03 499.284 131.127 494.991 112.199 487.967C94.4423 481.334 78.0515 472.163 61.8558 462.798L62.2461 460.847C80.0028 471.383 98.54 480.553 118.248 487.382C144.395 496.357 170.933 505.137 198.056 510.99C212.69 514.112 227.52 513.136 242.35 512.161C263.424 510.6 284.303 509.819 305.377 511.38C329.963 513.331 352.207 506.112 373.281 494.016C389.087 484.846 402.941 472.944 418.161 463.188C427.137 457.335 436.893 452.457 447.235 449.531C450.357 448.75 453.479 448.165 456.406 447.97L456.796 450.116Z" />
        <path class="fill-300"
			d="M462.455 474.7C447.43 472.358 432.6 476.846 418.161 486.211C405.868 494.211 394.355 503.381 381.672 510.6C356.305 525.038 329.182 530.891 300.108 526.989C280.4 524.257 260.887 526.208 241.374 529.525C231.618 531.086 221.861 532.842 211.91 533.232C197.47 533.818 183.421 531.086 169.762 526.989C155.908 522.892 142.054 518.599 128.2 514.502C112.589 509.819 97.9546 502.991 84.4908 493.82C75.9051 487.967 67.3194 481.919 58.7338 475.87L59.3191 473.139C69.4658 480.163 79.8077 487.187 89.9544 494.211C101.857 502.405 115.321 508.063 129.37 512.161C142.639 516.063 155.908 519.77 168.982 524.257C192.397 532.257 215.812 532.062 239.813 527.184C262.058 522.697 284.693 522.111 307.133 524.648C332.109 527.574 354.744 521.526 376.599 510.21C392.599 502.015 406.063 490.113 421.478 481.333C429.869 476.456 438.649 472.944 448.406 471.773C453.089 471.188 457.577 471.383 462.065 471.968L462.455 474.7Z" />
        <path class="fill-300"
			d="M348.305 4.48759C343.036 7.21911 337.768 10.1457 332.695 13.2675C312.596 26.1447 290.937 28.2909 268.107 24.3887C256.79 22.4376 245.667 20.2914 234.35 18.5354C216.008 15.6088 199.617 19.9012 186.153 33.3637C178.738 40.9729 171.713 49.1675 162.542 54.6306C160.591 55.8012 158.64 56.9719 156.688 57.9474L157.469 54.6306C159.225 53.655 160.786 52.6795 162.542 51.7039C169.177 47.6066 174.445 41.5583 179.519 35.9001C196.3 17.3648 216.788 12.0968 240.984 16.7794C256.399 19.9012 271.814 23.4131 287.815 23.6083C302.645 23.8034 316.109 19.9012 328.597 12.487C334.451 9.1702 340.11 5.46313 346.158 2.5365C346.549 2.34139 346.939 2.14628 347.524 1.95117L348.305 4.48759Z" />
        <path class="fill-300"
			d="M200.592 610.3L200.007 612.642C199.422 612.447 198.641 612.251 198.056 611.861C186.738 607.764 176.787 601.13 166.64 594.887C152.005 585.912 136.59 578.107 120.785 571.669C95.6131 561.523 74.7343 545.719 56.1971 525.818C53.6604 523.087 51.1237 520.355 48.587 517.624L49.1724 514.892C67.9048 535.769 88.1982 554.889 114.345 566.206C130.346 573.23 146.542 580.058 161.567 589.033C171.518 594.887 181.079 601.52 191.616 606.593C194.738 607.959 197.665 609.325 200.592 610.3Z" />
        <path class="fill-300"
			d="M474.943 527.574C461.089 525.623 448.016 528.745 435.918 537.72C432.405 540.256 428.893 542.793 425.186 544.939H420.307C424.21 542.793 427.917 540.256 431.43 537.525C444.698 527.574 458.748 523.087 474.163 525.233L474.943 527.574Z" />
        <path class="fill-300"
			d="M208.202 578.498L207.617 581.424C206.056 581.62 204.495 581.62 202.934 581.62C193.568 581.424 184.592 578.888 176.201 575.181C155.127 565.425 133.273 557.621 111.614 548.841C96.3936 542.598 83.32 533.233 71.222 522.502C64.5876 516.453 58.3435 510.21 52.0994 503.966L52.8799 501.04C55.8068 503.771 58.5386 506.698 61.2704 509.624C80.7833 529.916 103.418 545.134 130.346 553.719C146.542 558.987 161.957 566.206 177.372 573.23C187.714 577.522 198.056 579.473 208.202 578.498Z" />
        <path class="fill-300"
			d="M471.041 510.795C467.529 510.015 464.016 509.624 460.309 509.429C445.284 508.844 433.186 515.478 421.673 523.672C408.99 532.647 395.331 539.476 381.282 544.939H372.891C390.843 538.891 408.014 531.281 423.429 519.575C438.064 508.649 453.87 505.137 470.26 508.063L471.041 510.795Z" />
        <path class="fill-300"
			d="M214.447 551.573L213.861 553.914C197.665 556.255 181.665 553.914 165.664 547.866C153.762 543.378 141.468 539.281 129.175 535.769C104.004 528.355 82.9298 514.307 63.612 497.137C60.8802 494.601 57.9533 492.065 55.0264 489.723L55.6118 486.992C60.2948 490.894 64.9779 494.991 69.4659 499.284C88.7836 516.648 110.833 528.55 135.615 535.769C149.469 539.866 163.128 544.744 176.787 549.231C189.86 553.134 202.153 553.719 214.447 551.573Z" />
        <path class="fill-300"
			d="M466.943 493.43C449.967 489.918 433.576 494.211 418.161 505.527C397.087 521.136 374.257 533.037 348.89 539.476C335.036 542.988 320.987 543.963 306.938 541.817C286.449 538.5 266.351 539.866 246.838 544.939H238.057C253.667 540.256 269.473 537.135 285.864 537.915C295.035 538.305 304.011 538.89 312.987 540.061C331.719 542.402 349.281 537.72 366.842 531.476C384.404 525.428 399.819 515.673 414.844 504.942C428.308 495.186 442.747 488.748 459.919 490.113C462.26 490.308 464.407 490.504 466.553 491.089L466.943 493.43Z" />
        <path class="fill-300"
			d="M123.712 712.342C113.175 710.001 104.199 704.148 95.0277 699.075C94.2472 698.49 93.2715 698.099 92.491 697.514C75.1245 687.173 62.4412 688.734 47.6114 702.587C40.3916 709.221 34.5377 717.025 28.6839 724.829C28.2936 725.22 28.0985 725.61 27.7082 726H24.5862C24.9764 725.61 25.1716 725.22 25.5618 724.829C32.3913 715.464 39.8062 706.489 48.3919 698.685C60.685 687.564 73.5635 685.613 88.3933 692.832C94.4423 695.758 100.101 699.465 105.955 702.782C112.394 706.489 119.224 709.416 126.443 710.782C147.517 714.684 158.835 695.953 154.932 679.954C151.03 663.76 139.712 654.395 125.663 647.371C116.687 642.689 106.735 640.347 97.1741 637.03C82.1492 631.958 70.6366 622.397 60.2947 610.691C50.9286 600.35 42.538 589.229 34.5378 577.912L35.3183 574.205C35.9037 575.181 36.489 575.961 37.0744 576.937C45.465 589.619 55.2214 601.521 65.5632 612.837C76.2953 624.543 89.3689 632.348 104.589 636.835C113.955 639.567 123.321 642.493 131.712 647.566C144.005 654.98 153.957 664.346 157.079 679.174C161.957 701.221 145.761 717.025 123.712 712.342Z" />
        <path class="fill-300"
			d="M193.958 639.372L193.178 642.689C190.055 638.396 186.348 634.494 182.25 630.787C164.298 614.788 144.59 601.521 122.346 591.96C93.0765 579.278 68.6854 560.353 48.5871 535.964C47.6114 534.598 46.4407 533.428 45.2699 532.062L46.0504 529.135C46.8309 530.111 47.6114 531.086 48.392 532.062C70.4415 559.377 97.7595 579.083 129.956 593.131C150.835 602.106 168.786 615.764 185.763 630.787C188.885 633.323 191.616 636.25 193.958 639.372Z" />
        <path class="fill-300"
			d="M479.041 544.939H466.163C466.553 544.939 466.748 544.744 467.138 544.744C471.041 543.963 474.943 543.573 478.846 543.573L479.041 544.939Z" />
        <path class="fill-300"
			d="M187.324 667.467L185.958 672.735C184.982 667.662 183.421 662.785 181.079 657.712C174.445 643.079 161.957 633.323 149.078 624.153C140.102 617.715 130.346 612.642 120.199 608.74C89.7592 596.448 66.1486 575.766 45.6601 550.987C44.4893 549.427 43.1234 548.061 41.9526 546.5L42.7332 543.378C42.9283 543.573 42.9283 543.573 43.1234 543.768C56.0019 559.962 70.0512 575.181 87.0274 587.473C96.3936 594.302 106.735 599.765 117.272 604.447C133.273 611.666 148.493 619.861 162.347 630.982C175.616 641.713 183.616 653.81 187.324 667.467Z" />
        <path class="fill-300"
			d="M160.201 724.634C159.81 725.024 159.42 725.415 159.03 725.805H156.103C156.493 725.415 156.884 725.024 157.079 724.634C159.615 721.903 162.152 719.171 164.103 716.244C177.372 697.319 175.421 670.394 159.81 652.639C149.078 640.347 135.81 632.348 120.98 626.104C105.76 619.666 90.3446 613.812 77.271 603.276C62.2461 591.18 50.1481 576.351 38.2452 561.523L39.0258 558.401C40.3917 559.962 41.5624 561.523 42.9283 563.084C56.002 579.083 69.0756 595.277 86.6372 606.788C100.296 615.763 115.907 620.251 130.346 627.665C148.688 637.03 165.274 648.737 172.104 669.418C178.933 689.71 175.421 708.635 160.201 724.634Z" />
        <path class="fill-300"
			d="M46.6358 665.711C37.0745 677.613 27.7083 689.71 17.9519 701.611C13.4639 707.074 8.19542 711.367 2.34155 714.098L3.12207 710.976C7.4149 708.635 11.3175 705.318 15.0249 701.221C25.3667 689.514 34.7329 677.028 44.4894 664.736C52.8799 654.2 54.2458 642.688 48.3919 630.787C42.7332 619.08 36.8793 607.764 30.245 596.838L31.0255 593.911C38.4404 605.618 45.465 617.519 51.1237 630.397C56.3922 642.883 55.4166 654.785 46.6358 665.711Z" />
        <path class="fill-300"
			d="M16.3909 654.785L22.4399 629.421C22.8301 638.396 20.4886 647.176 16.3909 654.785Z" />
        <path class="fill-300"
			d="M97.3693 725.805C84.2956 719.171 71.0269 715.854 57.9532 725.805C56.9776 725.805 56.0019 725.805 54.8312 725.805C61.0753 718.586 69.2707 716.44 78.4418 717.415C87.4177 718.391 95.6131 721.317 103.418 725.805C101.467 725.805 99.5157 725.805 97.3693 725.805Z" />
        <path class="fill-300"
			d="M326.255 1.36572C311.035 12.682 293.279 18.5353 271.034 15.4136C256.204 13.2674 241.765 9.56029 226.74 7.60921C210.349 5.46301 196.495 10.5358 184.202 20.6815C176.982 26.7299 170.347 33.3636 162.932 39.4119C162.347 39.9973 161.567 40.5826 160.981 40.9728L161.762 37.2658C166.835 33.3636 171.323 28.681 176.006 24.1935C189.275 11.7065 203.91 3.70703 222.642 5.07279C231.618 5.85323 240.399 7.21899 248.984 8.97497C260.692 11.3163 272.4 13.4625 284.498 13.6576C298.547 13.6576 310.84 9.36519 321.962 1.56083H326.255V1.36572Z" />
        <path class="fill-300"
			d="M384.404 146.332C376.013 143.405 368.403 138.722 360.598 134.43C347.524 127.211 333.865 121.553 318.45 122.528C307.523 123.309 299.328 127.601 294.644 137.747C292.498 142.234 292.108 147.112 292.108 151.99C292.303 168.184 294.644 184.183 297.376 199.987L298.937 193.353C297.181 181.841 295.23 170.33 294.449 158.819C294.254 154.331 294.644 149.844 295.035 145.161C296.205 134.04 305.377 125.65 318.45 124.87C333.28 123.894 346.158 129.357 358.647 136.186C364.11 139.113 369.574 142.234 375.038 144.966C378.355 146.722 381.672 148.088 384.989 149.063L384.404 146.332Z" />
        <path class="fill-300"
			d="M189.275 1.36572H194.739C189.275 3.90214 184.006 7.21899 178.933 11.5114C174.445 15.4136 169.762 19.3157 165.274 23.0228L166.25 19.3157C168.201 17.5598 170.347 15.6087 172.299 13.6576C177.762 8.58475 183.421 4.48746 189.275 1.36572Z" />
        <path class="fill-300"
			d="M303.23 1.36572C295.035 4.87768 285.864 6.43855 275.717 6.04833C265.375 5.65812 255.228 3.51192 245.277 1.36572H256.985C262.253 2.34127 267.717 3.1217 273.18 3.51192C281.376 4.09725 288.791 3.51192 295.815 1.36572H303.23Z" />
        <path class="fill-300"
			d="M175.226 1.36576C174.835 1.75598 174.445 2.1462 173.86 2.34131C172.299 3.70707 170.543 5.07283 168.982 6.43859L169.957 2.34131C170.347 1.95109 170.933 1.56087 171.323 1.17065H175.226V1.36576Z" />
        <path class="fill-300"
			d="M361.183 375.194C358.842 371.878 356.5 368.561 354.159 365.439H351.037C353.378 368.561 355.72 371.487 357.866 374.609C368.013 388.072 367.037 402.119 360.208 416.557C346.744 445.043 323.328 460.067 293.083 466.115C288.595 467.091 284.108 467.676 280.985 467.286C260.107 466.896 242.155 462.213 225.959 451.482C217.764 446.019 209.373 440.556 200.202 436.654C185.958 430.8 171.128 429.825 156.103 430.605C129.761 431.776 103.613 431.191 78.0516 423.776C75.71 423.191 73.5636 422.411 71.4172 421.63L70.8318 424.167C84.8811 428.849 99.7108 431.191 115.126 432.361C130.346 433.532 145.371 433.142 157.274 432.361C185.958 432.361 200.007 437.239 221.081 451.092C254.448 473.139 289.181 476.651 325.085 457.53C344.597 446.994 358.842 431.581 365.476 409.924C369.184 397.437 368.598 385.925 361.183 375.194ZM238.447 319.783C211.715 319.588 192.397 307.492 179.323 284.274C169.957 267.494 162.737 249.739 153.371 232.96C145.956 219.888 136.395 209.742 122.931 203.303L122.346 205.84C135.615 212.278 145.176 222.424 151.81 235.692C160.201 252.081 168.396 268.86 176.982 285.054C192.202 313.93 217.373 324.466 248.789 322.32C255.424 321.93 262.253 321.344 268.887 320.759L269.473 318.223C259.131 319.198 248.789 319.783 238.447 319.783Z" />
        <path class="fill-300"
			d="M354.159 166.428C350.061 162.526 345.768 159.014 340.89 156.282C325.865 147.892 316.304 153.355 316.304 173.842C316.889 178.134 317.474 183.012 318.45 188.085H321.182C320.011 181.841 318.645 175.598 318.645 169.354C318.84 156.087 326.45 151.404 338.353 157.648C345.573 161.55 351.427 167.208 357.476 172.476C364.696 178.72 372.306 183.988 380.696 188.085H386.55C374.842 182.232 363.72 175.598 354.159 166.428Z" />
        <path class="fill-300"
			d="M261.863 346.123C244.496 347.879 227.325 348.269 210.349 343.587C182.445 335.977 159.811 321.93 147.127 294.614C143.615 286.81 139.322 279.396 135.029 271.982C128.98 261.641 121.76 252.471 112.98 244.862L112.394 247.593C121.37 255.593 128.785 265.348 134.834 276.469C139.907 285.834 144.395 295.395 149.859 304.565C164.103 329.149 187.324 340.465 213.666 346.708C229.081 350.415 244.692 349.83 260.302 348.464C261.082 348.464 261.863 348.269 262.448 348.269L263.034 345.733C262.643 346.123 262.253 346.123 261.863 346.123ZM327.036 384.95C324.499 377.731 321.377 371.097 317.475 365.244H314.353C320.011 372.463 323.719 381.438 326.255 390.998C332.5 415.387 314.353 435.873 291.327 440.556C278.449 443.287 266.741 439.775 255.619 433.337C246.643 428.069 238.643 421.24 230.057 415.387C216.008 406.021 200.788 400.558 184.007 401.144C171.518 400.949 160.006 403.29 148.493 405.826C124.492 411.289 100.296 414.021 76.1003 406.997C75.71 406.802 75.3198 406.802 74.9295 406.607L74.3441 409.143C95.2229 415.582 116.882 413.826 138.346 410.314C153.176 407.777 167.421 403.29 182.641 403.29C187.129 403.68 191.812 403.68 196.104 404.265C211.52 406.412 224.593 414.216 236.691 423.386C244.301 429.044 251.716 434.702 260.302 438.8C281.766 449.141 307.328 443.287 321.572 424.752C330.938 412.655 332.109 398.998 327.036 384.95Z" />
        <path class="fill-300"
			d="M136.395 351.976C127.419 335.002 116.492 319.198 103.223 305.15C102.052 303.979 100.882 302.809 99.5157 301.638L98.7352 304.76C111.223 315.686 119.809 329.734 128.785 343.587C131.322 347.489 133.468 351.391 135.419 355.488C139.712 364.853 137.956 371.877 129.761 378.121C120.394 385.34 105.76 390.022 92.2959 390.022C87.808 390.022 83.32 389.437 79.0272 388.462L78.4418 390.803C83.1249 391.974 88.1982 392.559 93.2716 392.364C104.784 391.778 116.687 389.437 127.419 382.608C140.298 374.999 143.225 365.049 136.395 351.976Z" />
        <path class="fill-300"
			d="M697 726H520.213L477.675 545.329L480.602 544.549L522.555 723.073H693.293L523.726 2.92663H347.524V0H526.067L526.262 1.17065L697 726Z" />
        <path class="fill-300"
			d="M396.451 187.652L393.602 188.323L435.329 365.517L438.178 364.846L396.451 187.652Z" />
    </svg>
	<a class="d-none d-md-block nav-link" href="<c:url value='/amappli/home'/>">
		<h1 id="text-head" class="d-none d-md-block fw-bold fs-2 fc-main">amappli</h1>
	</a>
	<div class="p-0 ms-2 ms-md-0 d-flex justify-content-evenly">
		<svg class="my-auto mx-1" width="15" height="15" viewBox="0 0 30 30"
			xmlns="http://www.w3.org/2000/svg" class="m-auto">
	        <path class="fill-300"
				d="M6.458 10.428l-4.33-2.5c-.564-.325-.08-1.2.5-.866l4.33 2.5c.57.33.072 1.197-.5.866zm19.914 11.498l-4.33-2.5c-.564-.326-.08-1.2.5-.866l4.33 2.5c.57.33.072 1.196-.5.866zM9.568 6.952l-2.5-4.33c-.326-.564.53-1.08.866-.5l2.5 4.33c.33.57-.536 1.072-.866.5zm11.497 19.914l-2.5-4.33c-.325-.564.53-1.08.866-.5l2.5 4.33c.33.57-.535 1.072-.865.5zm-2.5-20.415l2.5-4.33c.326-.563 1.2-.08.866.5l-2.5 4.33c-.328.572-1.195.073-.865-.5zM7.068 26.366l2.5-4.33c.325-.564 1.2-.08.866.5l-2.5 4.33c-.33.57-1.196.072-.866-.5zM22.042 9.56l4.33-2.5c.564-.325 1.08.532.5.867l-4.33 2.5c-.57.33-1.072-.536-.5-.866zM2.128 21.06l4.33-2.5c.563-.325 1.08.53.5.866l-4.33 2.5c-.57.33-1.072-.536-.5-.866zM23.5 14h5c.65 0 .67 1 0 1h-5c-.66 0-.66-1 0-1zm-23 0h5c.65 0 .67 1 0 1h-5c-.66 0-.66-1 0-1zM15 23.5v5c0 .65-1 .67-1 0v-5c0-.66 1-.66 1 0zm0-23v5c0 .65-1 .67-1 0v-5c0-.66 1-.66 1 0zM14.5 8C10.916 8 8 10.916 8 14.5s2.916 6.5 6.5 6.5 6.5-2.916 6.5-6.5S18.084 8 14.5 8zm0 1c3.043 0 5.5 2.457 5.5 5.5 0 3.044-2.457 5.5-5.5 5.5S9 17.544 9 14.5C9 11.457 11.457 9 14.5 9z" />
	    </svg>
		<div class="form-switch">
	    	<input id="switch" class="form-check-input" type="checkbox" checked />
   		</div>
		<svg class="m-auto" width="15" height="15" viewBox="0 0 32 32" version="1.1"
			xmlns="http://www.w3.org/2000/svg" class="m-auto">
	        <path class="fill-300"
				d="M9.882 5.052c-0.847 1.717-1.295 3.614-1.295 5.564 0 6.977 5.676 12.653 12.653 12.653 2.052 0 4.035-0.489 5.812-1.412-2.15 3.869-6.248 6.37-10.862 6.37-6.866 0-12.451-5.585-12.451-12.451 0-4.491 2.409-8.533 6.143-10.724zM12.79 2.707c-5.817 1.509-10.118 6.78-10.118 13.069 0 7.465 6.053 13.517 13.518 13.517 6.387 0 11.726-4.435 13.139-10.389-2.087 2.039-4.939 3.298-8.088 3.298-6.399 0-11.587-5.188-11.587-11.587 0-3.061 1.196-5.838 3.137-7.909v0z" />
	    </svg>
	</div>
	<nav class="navbar navbar-expand-md col-offset-1 col-md-8 col-2 align-content-center">
		<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
			data-bs-target="#nav-content" aria-controls="nav-content"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div id="nav-content" class="offcanvas offcanvas-start navbar-collapse bg-main w-auto px-3">
			<ul class="navbar-nav w-100 mt-4 mt-md-0 justify-content-evenly">
				<li class="nav-item">
					<a href="<c:url value='/amappli/features'/>" class="nav-link nunito text-decoration-none fc-300 fch-500">Nos offres</a>
				</li>
				<li class="nav-item">
					<a href="<c:url value='/amappli/about'/>" class="nav-link nunito text-decoration-none fc-300 fch-500">Qui sommes-nous ?</a></li>
				<li class="nav-item">
					<a href="<c:url value='/amappli/contact'/>" class="nav-link nunito text-decoration-none fc-300 fch-500">Contact</a>
				</li>
				<li class="nav-item">
					<a href="<c:url value='/amappli/start/signup'/>" class="btn rounded-pill btn-500 px-4">S'inscrire</a>
				</li>
			</ul>
		</div>
	</nav>
</div>